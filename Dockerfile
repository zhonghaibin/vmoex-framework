# 1. 使用官方 PHP 镜像
FROM php:7.2-fpm

# 设置环境变量
ENV COMPOSER_VERSION=2.2.9 \
    WORKDIR=/var/www \
    APP_DIR=/var/app


# 3. 尝试更新包列表（增加重试机制）
RUN apt-get update || apt-get update || apt-get update

# 4. 安装基础工具（分批安装）
RUN apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    gnupg

# 5. 安装系统服务
RUN apt-get install -y --no-install-recommends \
    cron \
    nginx \
    supervisor

# 6. 安装开发工具
RUN apt-get install -y --no-install-recommends \
    vim \
    git \
    unzip \
    zip

# 7. 安装 PHP 扩展依赖
RUN apt-get install -y --no-install-recommends \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libicu-dev \
    libpq-dev \
    libedit-dev \
    libxslt-dev

# 8. 安装其他依赖
RUN apt-get install -y --no-install-recommends \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libxpm-dev \
    default-mysql-client

# 9. 安装 Node.js（使用 NodeSource 官方方法）
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# 10. 清理缓存
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 11. 配置和安装 PHP 扩展
RUN docker-php-ext-configure gd \
    --with-gd \
    --with-webp-dir \
    --with-jpeg-dir \
    --with-png-dir \
    --with-zlib-dir \
    --with-freetype-dir

RUN docker-php-ext-install -j$(nproc) \
    pdo \
    pdo_mysql \
    mysqli \
    mbstring \
    zip \
    gd \
    exif \
    pcntl \
    bcmath \
    intl \
    opcache \
    sockets

# 12. 安装 Redis 扩展
RUN pecl install redis && docker-php-ext-enable redis

# 13. 安装 Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --version=${COMPOSER_VERSION} \
    --install-dir=/usr/local/bin \
    --filename=composer

# 14. 配置 Composer 镜像
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 15. 配置工作目录
WORKDIR ${WORKDIR}

# 16. 创建日志目录
RUN mkdir -p /var/log/php-fpm && \
    touch /var/log/php-fpm/php-fpm_stdout.log \
          /var/log/php-fpm/php-fpm_stderr.log \
          /var/log/push-service_stdout.log \
          /var/log/push-service_stderr.log && \
    chmod 666 /var/log/php-fpm/php-fpm_stdout.log \
              /var/log/php-fpm/php-fpm_stderr.log \
              /var/log/push-service_stdout.log \
              /var/log/push-service_stderr.log

# 17. 配置 Opcache
RUN echo 'opcache.memory_consumption=128' >> /usr/local/etc/php/conf.d/opcache.ini && \
    echo 'opcache.interned_strings_buffer=8' >> /usr/local/etc/php/conf.d/opcache.ini && \
    echo 'opcache.max_accelerated_files=4000' >> /usr/local/etc/php/conf.d/opcache.ini && \
    echo 'opcache.revalidate_freq=60' >> /usr/local/etc/php/conf.d/opcache.ini && \
    echo 'opcache.fast_shutdown=1' >> /usr/local/etc/php/conf.d/opcache.ini

# 18. 复制配置文件
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY swiftmailer-cron /etc/cron.d/swiftmailer-cron

RUN chmod 0644 /etc/cron.d/swiftmailer-cron && \
    crontab /etc/cron.d/swiftmailer-cron && \
    rm -f /etc/nginx/sites-enabled/default

# 19. 复制应用代码
COPY . ${APP_DIR}

# 20. 配置 npm 镜像
RUN npm config set registry https://registry.npmmirror.com/ && \
    npm install -g yarn && \
    yarn config set registry https://registry.npmmirror.com/

# 21. 安装项目依赖
RUN cd ${APP_DIR} && composer install --no-dev --optimize-autoloader --no-interaction
RUN cd ${APP_DIR} && yarn install --production

# 22. 复制初始化脚本
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# 23. 清理
RUN rm -rf ${APP_DIR}/.git /root/.composer /root/.npm /root/.yarn /tmp/*

# 24. 创建应用用户
RUN groupadd -r appuser && useradd -r -g appuser appuser && \
    chown -R appuser:appuser ${APP_DIR} ${WORKDIR} /var/log

USER appuser

# 25. 暴露端口
EXPOSE 3110 3120

CMD ["/usr/local/bin/init.sh"]
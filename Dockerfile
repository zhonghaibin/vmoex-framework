# 1. 使用更稳定的基础镜像
FROM php:7.2-fpm

# 设置环境变量
ENV COMPOSER_VERSION=2.2.9 \
    WORKDIR=/var/www \
    APP_DIR=/var/app

# 2. 分步安装依赖，便于调试
# 首先只更新源和安装基础工具
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt-get update

# 3. 分批次安装包，避免单个命令过长
# 安装系统工具
RUN apt-get install -y --no-install-recommends \
    cron \
    nginx \
    supervisor \
    vim \
    git \
    curl \
    wget \
    unzip \
    zip

# 4. 安装开发依赖
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
    libxslt-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libxpm-dev \
    default-mysql-client

# 5. 注意：libmcrypt-dev 在较新版本中可能不可用，使用替代方案
RUN apt-get install -y --no-install-recommends libmcrypt-dev || \
    echo "libmcrypt-dev not available, skipping"

# 6. 清理缓存
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 7. 安装 Node.js（使用更稳定的方法）
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 8. 配置和安装 PHP 扩展
RUN docker-php-ext-configure gd \
    --with-gd \
    --with-webp-dir \
    --with-jpeg-dir \
    --with-png-dir \
    --with-zlib-dir \
    --with-xpm-dir \
    --with-freetype-dir

# 9. 安装 PHP 扩展（分批进行）
RUN docker-php-ext-install -j$(nproc) \
    pdo \
    pdo_mysql \
    mysqli \
    mbstring \
    zip \
    exif \
    pcntl \
    bcmath \
    intl \
    opcache \
    sockets

# 10. 单独安装 gd 扩展（可能更稳定）
RUN docker-php-ext-install gd

# 11. 安装 PECL 扩展
RUN pecl install redis && docker-php-ext-enable redis

# 12. 安装 Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --version=${COMPOSER_VERSION} \
    --install-dir=/usr/local/bin \
    --filename=composer

# 13. 配置 Composer 镜像
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 14. 配置工作目录
WORKDIR ${WORKDIR}
RUN rm -rf ${WORKDIR}/*

# 15. 创建日志目录和文件
RUN mkdir -p /var/log/php-fpm && \
    touch /var/log/php-fpm/php-fpm_stdout.log \
          /var/log/php-fpm/php-fpm_stderr.log \
          /var/log/push-service_stdout.log \
          /var/log/push-service_stderr.log && \
    chmod 666 /var/log/php-fpm/php-fpm_stdout.log \
              /var/log/php-fpm/php-fpm_stderr.log \
              /var/log/push-service_stdout.log \
              /var/log/push-service_stderr.log

# 16. 配置 Opcache
RUN { \
    echo 'opcache.memory_consumption=128'; \
    echo 'opcache.interned_strings_buffer=8'; \
    echo 'opcache.max_accelerated_files=4000'; \
    echo 'opcache.revalidate_freq=60'; \
    echo 'opcache.fast_shutdown=1'; \
    echo 'opcache.enable_cli=0'; \
} > /usr/local/etc/php/conf.d/opcache.ini

# 17. 复制配置文件
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY swiftmailer-cron /etc/cron.d/swiftmailer-cron

# 18. 设置配置权限
RUN chmod 0644 /etc/cron.d/swiftmailer-cron && \
    crontab /etc/cron.d/swiftmailer-cron && \
    rm -f /etc/nginx/sites-enabled/default

# 19. 复制应用代码
COPY . ${APP_DIR}

# 20. 配置 npm 和 yarn 镜像
RUN npm config set registry https://registry.npmmirror.com/ && \
    npm install -g bower uglify-js yarn && \
    yarn config set registry https://registry.npmmirror.com/ && \
    ln -sf /usr/local/bin/uglifyjs /usr/bin/uglifyjs

# 21. 安装项目依赖（分开执行以便调试）
# 先尝试只安装 Composer 依赖
RUN cd ${APP_DIR} && composer install --no-dev --optimize-autoloader --no-interaction

# 再安装 Node.js 依赖
RUN cd ${APP_DIR} && yarn install --production --network-timeout 100000

# 22. 复制初始化脚本
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# 23. 清理不必要的文件
RUN rm -rf \
    ${APP_DIR}/.git \
    ${APP_DIR}/docker-compose.yml \
    ${APP_DIR}/Dockerfile \
    /root/.composer \
    /root/.npm \
    /root/.yarn \
    /tmp/*

# 24. 创建非 root 用户
RUN groupadd -r appuser && useradd -r -g appuser appuser && \
    chown -R appuser:appuser ${APP_DIR} ${WORKDIR} /var/log

# 25. 切换用户
USER appuser

# 26. 暴露端口
EXPOSE 3110 3120

# 27. 启动命令
CMD ["/usr/local/bin/init.sh"]
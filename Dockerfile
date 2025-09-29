# 1. 基于官方 PHP 镜像（7.3-fpm, Debian Buster）
FROM php:7.3-fpm

# 2. 环境变量
ENV DEBIAN_FRONTEND=noninteractive \
    COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_MEMORY_LIMIT=-1  \
    APP_ENV=prod  \
    SYMFONY_ENV=prod

# 3. 替换 Debian 源（Buster 已 EOL，改为 archive）
RUN sed -i 's|deb.debian.org|archive.debian.org|g' /etc/apt/sources.list && \
    sed -i 's|security.debian.org|archive.debian.org|g' /etc/apt/sources.list && \
    sed -i '/buster-updates/d' /etc/apt/sources.list && \
    apt-get -o Acquire::Check-Valid-Until=false update && \
    apt-get install -y --no-install-recommends \
        cron \
        nginx \
        supervisor \
        vim \
        git \
        curl \
        wget \
        unzip \
        zip \
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
        default-mysql-client \
        nodejs \
        npm \
    # 安装 PHP 扩展
    && docker-php-ext-install -j$(nproc) \
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
    # 配置并安装 gd
    && docker-php-ext-configure gd \
        --with-freetype-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-webp-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd sockets \
    # 安装 redis 扩展（兼容 PHP 7.3 的版本）
    && pecl install redis-5.3.7 \
    && docker-php-ext-enable redis \
    # 清理
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 4. 安装 Composer（指定版本），并配置阿里云镜像
RUN curl -sS https://getcomposer.org/installer | php -- --version=2.2.9 --install-dir=/usr/local/bin --filename=composer && \
    composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 5. 安装 Node 工具链，并配置国内源
RUN npm config set registry https://registry.npmmirror.com/ && \
    npm install -g bower uglify-js yarn && \
    yarn config set registry https://registry.npmmirror.com/ && \
    ln -s /usr/local/bin/uglifyjs /usr/bin/uglifyjs

# 6. 设置工作目录
WORKDIR /var/www

# 7. 拷贝项目文件
COPY . /var/app

# 8. 安装项目依赖
RUN composer install --no-dev --optimize-autoloader --working-dir=/var/app --no-scripts \
    && yarn install --cwd /var/app --frozen-lockfile

# 9. 创建日志目录
RUN mkdir -p /var/log/php-fpm && \
    touch /var/log/php-fpm/php-fpm_stdout.log /var/log/php-fpm/php-fpm_stderr.log \
          /var/log/push-service_stdout.log /var/log/push-service_stderr.log && \
    chmod 777 /var/log/php-fpm/php-fpm_stdout.log /var/log/php-fpm/php-fpm_stderr.log \
              /var/log/push-service_stdout.log /var/log/push-service_stderr.log

# 10. 配置 Nginx
RUN rm /etc/nginx/sites-enabled/default
COPY ./nginx.conf /etc/nginx/nginx.conf

# 11. 配置 Supervisor
COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 12. 初始化脚本
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# 13. 配置定时任务
COPY swiftmailer-cron /etc/cron.d/swiftmailer-cron
RUN chmod 0644 /etc/cron.d/swiftmailer-cron && crontab /etc/cron.d/swiftmailer-cron

# 14. 清理临时/敏感文件
RUN rm -rf /var/app/init.sh /var/app/nginx.conf /var/app/supervisord.conf /var/app/swiftmailer-cron /var/data/vmoex-framework.sql

# 15. 暴露端口 [websocket]
EXPOSE 3110 3120

# 16. 配置 Opcache
RUN { \
      echo 'opcache.memory_consumption=128'; \
      echo 'opcache.interned_strings_buffer=8'; \
      echo 'opcache.max_accelerated_files=4000'; \
      echo 'opcache.revalidate_freq=2'; \
      echo 'opcache.fast_shutdown=1'; \
      echo 'opcache.enable_cli=1'; \
    } > /usr/local/etc/php/conf.d/opcache.ini

# 17. 启动 Supervisor（由 init.sh 启动）
CMD ["/usr/local/bin/init.sh"]
# 1. 基于官方的 PHP 镜像，选择带有 FPM 和 CLI 的版本
FROM php:7.2-fpm


# 2. 替换为阿里云源并安装必要的系统工具和依赖项
RUN sed -i 's|deb.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y \
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
    libmcrypt-dev \
    libedit-dev \
    libxslt-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libxpm-dev \
    default-mysql-client \
    nodejs \
    npm \
    && docker-php-ext-install pdo pdo_mysql mysqli mbstring zip gd exif pcntl bcmath intl opcache

# 3. 安装 Redis 扩展和其他 PHP 扩展
RUN pecl install redis && docker-php-ext-enable redis
RUN docker-php-ext-configure gd --with-gd --with-webp-dir --with-jpeg-dir --with-png-dir --with-zlib-dir --with-xpm-dir --with-freetype-dir
RUN docker-php-ext-install sockets gd

# 4. 安装 Composer，并替换为阿里云源
RUN curl -sS https://getcomposer.org/installer | php -- --version=2.2.9 --install-dir=/usr/local/bin --filename=composer
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 5. 配置工作目录
WORKDIR /var/www
RUN rm /var/www/* -Rf 
# 6. 拷贝项目文件
COPY . /var/app

# 7. 安装项目依赖，并替换 npm 为阿里云源
RUN npm config set registry https://registry.npmmirror.com/ && npm install -g bower uglify-js yarn
RUN yarn config set registry https://registry.npmmirror.com/ 
RUN ln -s /usr/local/bin/uglifyjs /usr/bin/uglifyjs

RUN composer install --working-dir=/var/app && yarn install --cwd /var/app


RUN mkdir -p /var/log/php-fpm && \
    touch /var/log/php-fpm/php-fpm_stdout.log /var/log/php-fpm/php-fpm_stderr.log \
    /var/log/push-service_stdout.log /var/log/push-service_stderr.log && \
    chmod 777 /var/log/php-fpm/php-fpm_stdout.log /var/log/php-fpm/php-fpm_stderr.log \
    /var/log/push-service_stdout.log /var/log/push-service_stderr.log



# # 11. 配置 Nginx
RUN rm /etc/nginx/sites-enabled/default
COPY ./nginx.conf /etc/nginx/nginx.conf

# # 12. 配置 Supervisor 来管理 Nginx 和 PHP-FPM
COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf


COPY init.sh /usr/local/bin/init.sh
RUN  chmod +x /usr/local/bin/init.sh


COPY swiftmailer-cron /etc/cron.d/swiftmailer-cron
RUN chmod 0644 /etc/cron.d/swiftmailer-cron
RUN crontab /etc/cron.d/swiftmailer-cron

RUN  rm -rf /var/app/init.sh /var/app/nginx.conf /var/app/supervisord.conf /var/app/swiftmailer-cron /var/data/vmoex-framework.sql

# 13. 暴露端口 [websocket]
EXPOSE 3110 3120

# 配置 Opcache
RUN { \
      echo 'opcache.memory_consumption=128'; \
      echo 'opcache.interned_strings_buffer=8'; \
      echo 'opcache.max_accelerated_files=4000'; \
      echo 'opcache.revalidate_freq=2'; \
      echo 'opcache.fast_shutdown=1'; \
      echo 'opcache.enable_cli=1'; \
    } > /usr/local/etc/php/conf.d/opcache.ini


# 14. 启动 Supervisor
 CMD ["/usr/local/bin/init.sh"]
#-----------常用命令---------------
#导入数据
# php bin/console doctrine:database:init
#载入翻译数据
# php bin/console translation:persist
#修改管理员密码
# php bin/console doctrine:schema:update --force (mysql 5.7)
# php bin/console change-password -u admin -p [password]
#清理缓存
# php bin/console cache:clear --env=prod
#创建静态资源文件
# php bin/console assetic:dump --env=prod
#启动websocket
# php bin/push-service.php start -d

#php bin/console doctrine:cache:clear-metadata
#php bin/console doctrine:cache:clear-query
#php bin/console doctrine:cache:clear-result
#php bin/console cache:clear
php bin/console doctrine:cache:clear-metadata
php bin/console doctrine:generate:entities Yeskn
php bin/console cache:clear


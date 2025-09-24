# 基于官方PHP镜像，选择带有FPM和CLI的版本
FROM php:7.2-fpm

# 设置维护者信息
LABEL maintainer="zhonghaibin92@gmail.com"
LABEL description="Optimized PHP 7.2 FPM image with necessary extensions"

# 避免交互模式下的配置提示
ENV DEBIAN_FRONTEND=noninteractive

# 创建非root用户
RUN groupadd -r appuser && useradd -r -g appuser appuser

# 替换为阿里云源并安装必要的系统工具和依赖项
# 合并RUN指令以减少镜像层数，并清理缓存
RUN sed -i 's|deb.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y --no-install-recommends \
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
    npm && \
    docker-php-ext-configure gd --with-gd --with-webp-dir --with-jpeg-dir --with-png-dir --with-zlib-dir --with-xpm-dir --with-freetype-dir && \
    docker-php-ext-install -j$(nproc) \
    pdo pdo_mysql mysqli mbstring zip gd exif pcntl bcmath intl opcache sockets && \
    pecl install redis && docker-php-ext-enable redis && \
    curl -sS https://getcomposer.org/installer | php -- --version=2.2.9 --install-dir=/usr/local/bin --filename=composer && \
    composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ && \
    npm config set registry https://registry.npmmirror.com/ && \
    npm install -g bower uglify-js yarn && \
    yarn config set registry https://registry.npmmirror.com/ && \
    ln -s /usr/local/bin/uglifyjs /usr/bin/uglifyjs && \
    mkdir -p /var/log/php-fpm && \
    touch /var/log/php-fpm/php-fpm_stdout.log /var/log/php-fpm/php-fpm_stderr.log \
    /var/log/push-service_stdout.log /var/log/push-service_stderr.log && \
    chown -R appuser:appuser /var/log && \
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 配置工作目录
WORKDIR /var/www
RUN rm -rf /var/www/* && \
    mkdir -p /var/app && \
    chown -R appuser:appuser /var/www /var/app

# 拷贝项目文件（使用.dockerignore排除不必要文件）
COPY --chown=appuser:appuser . /var/app

# 安装项目依赖
RUN cd /var/app && \
    composer install --no-dev --optimize-autoloader && \
    yarn install --production && \
    composer clear-cache && \
    rm -rf /var/app/init.sh /var/app/nginx.conf /var/app/supervisord.conf \
    /var/app/swiftmailer-cron /var/data/vmoex-framework.sql

# 配置Nginx
RUN rm -f /etc/nginx/sites-enabled/default && \
    mkdir -p /var/run/nginx /var/log/nginx && \
    chown -R appuser:appuser /etc/nginx /var/run/nginx /var/log/nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# 配置Supervisor
RUN mkdir -p /var/log/supervisor /var/run/supervisor && \
    chown -R appuser:appuser /etc/supervisor /var/log/supervisor /var/run/supervisor
COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 配置Cron任务
COPY ./swiftmailer-cron /etc/cron.d/swiftmailer-cron
RUN chmod 0644 /etc/cron.d/swiftmailer-cron && \
    crontab /etc/cron.d/swiftmailer-cron && \
    chown appuser:appuser /etc/cron.d/swiftmailer-cron

# 配置Opcache
RUN { \
      echo 'opcache.memory_consumption=128'; \
      echo 'opcache.interned_strings_buffer=8'; \
      echo 'opcache.max_accelerated_files=4000'; \
      echo 'opcache.revalidate_freq=2'; \
      echo 'opcache.fast_shutdown=1'; \
      echo 'opcache.enable_cli=1'; \
    } > /usr/local/etc/php/conf.d/opcache.ini

# 拷贝并配置启动脚本
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh && \
    chown appuser:appuser /usr/local/bin/init.sh

# 暴露端口
EXPOSE 3110 3120

# 切换到非root用户
USER appuser

# 启动命令
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
#php bin/console doctrine:generate:entities Yeskn


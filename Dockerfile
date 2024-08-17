# 1. 基于官方的 PHP 镜像，选择带有 FPM 和 CLI 的版本
FROM php:7.2-fpm

# 2. 替换为阿里云源并安装必要的系统工具和依赖项
RUN sed -i 's|deb.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list && \
    apt-get update && apt-get install -y \
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

# 6. 拷贝项目文件
COPY . .

# 7. 安装项目依赖，并替换 npm 为阿里云源
# RUN composer install
RUN npm config set registry https://registry.npmmirror.com/ && npm install -g bower uglify-js yarn
RUN yarn config set registry https://registry.npmmirror.com/ && yarn install
RUN ln -s /usr/local/bin/uglifyjs /usr/bin/uglifyjs
# 8. 安装前端依赖
RUN composer install &&  yarn install

# 9. 映射目录
RUN ln -s /var/www/node_modules/jquery.caret /var/www/web/assets/lib/Caret.js && \
    ln -s /var/www/node_modules/bootstrap /var/www/web/assets/lib/bootstrap && \
    ln -s /var/www/node_modules/bootstrap-social /var/www/web/assets/lib/bootstrap-social && \
    ln -s /var/www/node_modules/echarts /var/www/web/assets/lib/echarts && \
    ln -s /var/www/node_modules/eds-ui /var/www/web/assets/lib/eds-ui && \
    ln -s /var/www/node_modules/font-awesome /var/www/web/assets/lib/font-awesome && \
    ln -s /var/www/node_modules/jquery /var/www/web/assets/lib/jquery && \
    ln -s /var/www/node_modules/jquery-pjax /var/www/web/assets/lib/jquery-pjax && \
    ln -s /var/www/node_modules/at.js /var/www/web/assets/lib/jquery.atwho && \
    ln -s /var/www/node_modules/laydate /var/www/web/assets/lib/laydate && \
    ln -s /var/www/node_modules/metismenu /var/www/web/assets/lib/metisMenu && \
    ln -s /var/www/node_modules/nprogress /var/www/web/assets/lib/nprogress && \
    ln -s /var/www/node_modules/socket.io-client /var/www/web/assets/lib/socket.io-client && \
    ln -s /var/www/node_modules/startbootstrap-sb-admin-2 /var/www/web/assets/lib/startbootstrap-sb-admin-2 && \
    ln -s /var/www/node_modules/wangeditor /var/www/web/assets/lib/wangeditor

# 10. 设置权限
RUN chown -R www-data:www-data /var/www

# 11. 暴露端口
EXPOSE 3120 9000

# 12. 启动 WebSocket 和 php-fpm 服务
CMD ["php", "bin/push-service.php", "start",'-d']
CMD ["php-fpm"]

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
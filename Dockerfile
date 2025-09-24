# 修复版本的 Dockerfile
FROM php:7.2-fpm

# 修复 Debian Buster 源问题
RUN sed -i 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i '/buster-updates/d' /etc/apt/sources.list

# 更新并安装基础包
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    gnupg \
    cron \
    nginx \
    supervisor \
    git \
    unzip \
    zip

# 安装 PHP 扩展依赖
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
    default-mysql-client

# 修正：PHP 7.2 的正确 gd 扩展配置
RUN docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/

# 安装 PHP 扩展（分开安装，避免单个命令失败）
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

# 单独安装 gd 扩展
RUN docker-php-ext-install gd

# 修复：为 PHP 7.2 安装兼容的 Redis 扩展版本
RUN pecl channel-update pecl.php.net && \
    pecl install redis-5.3.7 && \
    docker-php-ext-enable redis

# 安装 Composer（使用更兼容的版本）
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin --filename=composer --version=2.2.18

# 设置工作目录
WORKDIR /var/www

# 创建日志目录
RUN mkdir -p /var/log/php-fpm && \
    touch /var/log/php-fpm/php-fpm_stdout.log \
          /var/log/php-fpm/php-fpm_stderr.log && \
    chmod 666 /var/log/php-fpm/*.log

# 复制应用代码（先复制 composer 文件，利用 Docker 缓存）
COPY composer.json composer.lock* /var/app/
WORKDIR /var/app

# 调试：显示 composer 文件内容
RUN ls -la /var/app/ && \
    if [ -f composer.json ]; then cat composer.json; else echo "No composer.json found"; fi && \
    if [ -f composer.lock ]; then echo "composer.lock exists"; else echo "No composer.lock"; fi

# 先尝试只安装依赖，不运行脚本
RUN composer install --no-dev --optimize-autoloader --no-interaction --no-scripts --no-autoloader

# 如果上一步成功，再运行完整的安装
RUN composer install --no-dev --optimize-autoloader --no-interaction

# 复制剩余的应用代码
COPY . /var/app/

# 安装 Node.js（使用更兼容的方法）
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    npm config set registry https://registry.npmmirror.com/

# 安装 npm 依赖（如果有 package.json）
COPY package.json package-lock.json* /var/app/
RUN if [ -f package.json ]; then npm install --production; else echo "No package.json found"; fi

# 复制配置
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# 设置正确的文件权限
RUN chown -R www-data:www-data /var/app/storage /var/app/bootstrap/cache && \
    chmod -R 775 /var/app/storage /var/app/bootstrap/cache

# 清理
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3110 3120
CMD ["/usr/local/bin/init.sh"]
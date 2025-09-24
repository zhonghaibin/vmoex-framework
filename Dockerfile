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

# 安装 PHP 扩展
RUN docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) \
    pdo pdo_mysql mysqli mbstring zip gd exif pcntl bcmath intl opcache sockets

# 安装 Redis
RUN pecl install redis && docker-php-ext-enable redis

# 安装 Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin --filename=composer

# 设置工作目录
WORKDIR /var/www

# 复制应用代码
COPY . /var/app

# 安装 Node.js（使用 NodeSource）
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    npm config set registry https://registry.npmmirror.com/

# 安装项目依赖
WORKDIR /var/app
RUN composer install --no-dev --optimize-autoloader --no-interaction
RUN npm install --production

# 复制配置
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# 清理
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3110 3120
CMD ["/usr/local/bin/init.sh"]
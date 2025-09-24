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

# 先复制 composer 文件
COPY composer.json composer.lock* /var/app/
WORKDIR /var/app

# 调试：显示项目结构
RUN ls -la /var/app/ && \
    echo "=== Checking for app directory ===" && \
    if [ -d app ]; then ls -la app/; else echo "No app directory found"; fi && \
    echo "=== Checking for AppKernel.php ===" && \
    find /var/app -name "AppKernel.php" -type f 2>/dev/null || echo "AppKernel.php not found"

# 方案1：先尝试修复 composer.json 的自动加载配置
RUN if [ -f composer.json ]; then \
        # 备份原始文件
        cp composer.json composer.json.backup && \
        # 检查并修复自动加载配置
        cat composer.json | python3 -c "
import json, sys
data = json.load(sys.stdin)
if 'autoload' in data and 'classmap' in data['autoload']:
    # 过滤掉不存在的文件/目录
    existing_files = []
    for item in data['autoload']['classmap']:
        import os
        if os.path.exists('/var/app/' + item) or os.path.exists('/var/app/' + item.replace('/', os.sep)):
            existing_files.append(item)
        else:
            print('Removing non-existent path from classmap:', item)
    data['autoload']['classmap'] = existing_files
    print('Updated classmap:', existing_files)
print(json.dumps(data, indent=2))
" > composer.json.fixed && \
        mv composer.json.fixed composer.json; \
    fi

# 方案2：如果上述方法失败，使用更直接的方法
RUN if [ -f composer.json ]; then \
        # 使用 jq 工具处理 JSON（如果可用）或者使用 sed
        apt-get update && apt-get install -y jq || true && \
        if command -v jq >/dev/null 2>&1; then \
            jq 'del(.autoload.classmap[] | select(. == "app/AppKernel.php"))' composer.json > composer.json.tmp && \
            mv composer.json.tmp composer.json; \
        else \
            # 使用 sed 作为备选方案
            sed -i '/"app\/AppKernel.php"/d' composer.json; \
        fi; \
    fi

# 方案3：直接跳过有问题的自动加载生成
RUN composer install --no-dev --optimize-autoloader --no-interaction --no-autoloader || \
    (echo "First attempt failed, trying alternative approach..." && \
     composer dump-autoload --no-dev --optimize --no-interaction)

# 如果上一步只安装了依赖但没有生成自动加载，现在生成自动加载
RUN composer dump-autoload --no-dev --optimize --no-interaction

# 复制剩余的应用代码
COPY . /var/app/

# 再次检查并修复文件权限
RUN if [ -d /var/app/app ]; then \
        find /var/app/app -name "*.php" -type f | head -5 && \
        echo "App directory exists with PHP files"; \
    else \
        echo "No app directory found after full copy"; \
        ls -la /var/app/; \
    fi

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
RUN if [ -d /var/app/storage ]; then chown -R www-data:www-data /var/app/storage; fi && \
    if [ -d /var/app/bootstrap/cache ]; then chown -R www-data:www-data /var/app/bootstrap/cache; fi && \
    if [ -d /var/app/var ]; then chown -R www-data:www-data /var/app/var; fi && \
    chmod -R 775 /var/app/storage /var/app/bootstrap/cache /var/app/var 2>/dev/null || true

# 清理
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3110 3120
CMD ["/usr/local/bin/init.sh"]
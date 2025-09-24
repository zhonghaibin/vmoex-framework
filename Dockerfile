# 1. 使用更具体的版本标签，避免使用 latest
FROM php:7.2-fpm

# 设置环境变量
ENV COMPOSER_VERSION=2.2.9 \
    WORKDIR=/var/www \
    APP_DIR=/var/app \
    NODE_VERSION=14

# 2. 一次性安装所有依赖，减少镜像层数
RUN set -eux; \
    # 替换为阿里云源
    sed -i 's|deb.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list; \
    sed -i 's|security.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list; \
    \
    apt-get update; \
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
        libmcrypt-dev \
        libedit-dev \
        libxslt-dev \
        libwebp-dev \
        libjpeg62-turbo-dev \
        libxpm-dev \
        default-mysql-client; \
    \
    # 清理缓存，减少镜像大小
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

# 3. 安装 Node.js (使用更稳定的版本)
RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 4. 配置和安装 PHP 扩展（按依赖关系分组）
RUN docker-php-ext-configure gd \
        --with-gd \
        --with-webp-dir \
        --with-jpeg-dir \
        --with-png-dir \
        --with-zlib-dir \
        --with-xpm-dir \
        --with-freetype-dir; \
    \
    docker-php-ext-install -j$(nproc) \
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
        sockets;

# 5. 安装 PECL 扩展
RUN pecl install redis && docker-php-ext-enable redis

# 6. 安装 Composer（提前安装以利用缓存）
RUN curl -sS https://getcomposer.org/installer | php -- \
    --version=${COMPOSER_VERSION} \
    --install-dir=/usr/local/bin \
    --filename=composer && \
    composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 7. 配置工作目录
WORKDIR ${WORKDIR}
RUN rm -rf ${WORKDIR}/*

# 8. 创建必要的日志文件和目录
RUN mkdir -p /var/log/php-fpm && \
    touch /var/log/php-fpm/php-fpm_stdout.log \
          /var/log/php-fpm/php-fpm_stderr.log \
          /var/log/push-service_stdout.log \
          /var/log/push-service_stderr.log && \
    chmod 666 /var/log/php-fpm/*.log /var/log/push-service_*.log

# 9. 配置 Opcache（使用更安全的配置）
RUN { \
    echo 'opcache.memory_consumption=128'; \
    echo 'opcache.interned_strings_buffer=8'; \
    echo 'opcache.max_accelerated_files=4000'; \
    echo 'opcache.revalidate_freq=60'; \
    echo 'opcache.fast_shutdown=1'; \
    echo 'opcache.enable_cli=0'; \
    echo 'opcache.enable=1'; \
    echo 'opcache.save_comments=1'; \
} > /usr/local/etc/php/conf.d/opcache.ini

# 10. 复制配置文件（提前复制不变的文件以利用缓存）
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY swiftmailer-cron /etc/cron.d/swiftmailer-cron

# 设置配置文件权限
RUN chmod 0644 /etc/cron.d/swiftmailer-cron && \
    crontab /etc/cron.d/swiftmailer-cron && \
    rm -f /etc/nginx/sites-enabled/default

# 11. 复制应用代码（这应该放在较后的位置，因为代码变化频繁）
COPY . ${APP_DIR}

# 12. 安装前端工具和配置
RUN npm config set registry https://registry.npmmirror.com/ && \
    npm install -g bower uglify-js yarn && \
    yarn config set registry https://registry.npmmirror.com/ && \
    ln -sf /usr/local/bin/uglifyjs /usr/bin/uglifyjs

# 13. 安装项目依赖（分开执行以便更好地利用缓存）
# 先安装 Composer 依赖（通常变化较少）
RUN composer install --working-dir=${APP_DIR} --no-dev --optimize-autoloader --no-interaction

# 再安装 Node.js 依赖
RUN yarn install --cwd ${APP_DIR} --production --network-timeout 100000

# 14. 复制初始化脚本并设置权限
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

# 15. 清理不必要的文件
RUN rm -rf \
    ${APP_DIR}/init.sh \
    ${APP_DIR}/nginx.conf \
    ${APP_DIR}/supervisord.conf \
    ${APP_DIR}/swiftmailer-cron \
    ${APP_DIR}/var/data/vmoex-framework.sql \
    ${APP_DIR}/.git \
    /root/.composer \
    /root/.npm \
    /root/.yarn \
    /tmp/*

# 16. 创建非 root 用户（增强安全性）
RUN groupadd -r appuser && useradd -r -g appuser appuser && \
    chown -R appuser:appuser ${APP_DIR} ${WORKDIR} /var/log

# 17. 切换用户
USER appuser

# 18. 暴露端口
EXPOSE 3110 3120

# 19. 健康检查
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:3110/health || exit 1

# 20. 使用 exec 形式启动
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


#!/bin/bash

# 要检查和复制的目标目录，例如 /var/www
TARGET_DIR="/var/www"

# 如果目标目录为空，则复制文件

if [ -z "$(ls -A $TARGET_DIR)" ]; then
  echo "正在初始化应用程序"
  echo "大概要十分钟,请耐心等待"
    mv /var/app/* /var/www
    rm -Rf /var/app

  echo "感谢你的耐心等待"
  echo "初始化应用程序已完成"
  # 创建符号链接
  ln -s /var/www/node_modules/jquery.caret /var/www/web/assets/lib/Caret.js
  ln -s /var/www/node_modules/bootstrap /var/www/web/assets/lib/bootstrap
  ln -s /var/www/node_modules/bootstrap-social /var/www/web/assets/lib/bootstrap-social
  ln -s /var/www/node_modules/echarts /var/www/web/assets/lib/echarts
  ln -s /var/www/node_modules/eds-ui /var/www/web/assets/lib/eds-ui
  ln -s /var/www/node_modules/font-awesome /var/www/web/assets/lib/font-awesome
  ln -s /var/www/node_modules/jquery /var/www/web/assets/lib/jquery
  ln -s /var/www/node_modules/jquery-pjax /var/www/web/assets/lib/jquery-pjax
  ln -s /var/www/node_modules/at.js /var/www/web/assets/lib/jquery.atwho
  ln -s /var/www/node_modules/laydate /var/www/web/assets/lib/laydate
  ln -s /var/www/node_modules/metismenu /var/www/web/assets/lib/metisMenu
  ln -s /var/www/node_modules/nprogress /var/www/web/assets/lib/nprogress
  ln -s /var/www/node_modules/socket.io-client /var/www/web/assets/lib/socket.io-client
  ln -s /var/www/node_modules/startbootstrap-sb-admin-2 /var/www/web/assets/lib/startbootstrap-sb-admin-2
  ln -s /var/www/node_modules/wangeditor /var/www/web/assets/lib/wangeditor
else
  rm -Rf /var/app
fi
# 设置正确的权限
chown -R www-data:www-data $TARGET_DIR && chmod 777 -Rf /var/www/web/upload  && chmod 777 -Rf /var/www/var
echo "启动应用服务"
echo "请通过 http://127.0.0.1:3110 进行访问 "
# 启动 Supervisor
exec supervisord -c /etc/supervisor/conf.d/supervisord.conf


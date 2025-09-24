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
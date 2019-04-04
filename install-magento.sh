#!/bin/bash

#su www-data <<EOSU

/var/www/html/bin/magento setup:install --base-url=http://localhost:8080 --backend-frontname=admin --language=en_GB --timezone=Europe/Rome --currency=USD --db-host=mysql --db-name=magento --db-user=root --db-password=root --use-secure=0 --base-url-secure=0 --use-secure-admin=0 --admin-firstname=theMiddle --admin-lastname=theMiddle --admin-email=the@mi.ddle --admin-user=admin --admin-password=1qazxsw2

#EOSU

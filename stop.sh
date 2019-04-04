#!/bin/bash

docker stop poc-magento227-sqli_web_1 poc-magento227-sqli_mysql_1 && \
docker rm poc-magento227-sqli_web_1 poc-magento227-sqli_mysql_1 && \
rm -rvf magento-exploits

#!/bin/bash

docker stop 22-sqli_web_1 22-sqli_mysql_1 && \
docker rm 22-sqli_web_1 22-sqli_mysql_1 && \
rm -rvf magento-exploits

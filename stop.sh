#!/bin/bash

docker stop magento227sqli-web magento227sqli-mysql && \
docker rm magento227sqli-web magento227sqli-mysql && \
rm -rvf magento-exploits

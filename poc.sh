#!/bin/bash

docker-compose up -d && \
docker cp install-magento.sh 22-sqli_web_1:/root/ && \
echo "Waiting for MySQL..." && sleep 10 && \
docker exec 22-sqli_web_1 bash /root/install-magento.sh && \
echo -e "\nchown magento root html to www-data (this could take a while...)" && \
docker exec 22-sqli_web_1 chown -R www-data:www-data /var/www/html/ && \
echo -e "\n\nLogin to http://localhost:8080/admin\nUsername: admin\nPassword: 1qazxsw2\n\n" && \
read -n 1 -s -r -p "Press any key to continue"

echo -e "\n\ngit clone the exploit..." && \
git clone https://github.com/ambionics/magento-exploits.git && \
cd magento-exploits && echo -e "\n\nrun the exploit:\n" && python3 magento-sqli.py http://localhost:8080

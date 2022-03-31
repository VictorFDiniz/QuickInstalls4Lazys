#!/bin/bash

apt-get update && apt-get upgrade -y
apt-get install build-essential -y

ufw allow OpenSSH
ufw enable

#LAMP

apt-get -y install apache2 mysql-server php libapache2-mod-php php-mysql
ufw allow "Apache Full"
mysql_secure_installation

mkdir /var/www/wordpress
cd /var/www/wordpress

wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
rm latest.tar.gz

chown www-data:www-data wordpress -R
chmod 775 wordpress -R

echo "Done"


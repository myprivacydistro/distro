#!/bin/bash
# ONLY BASICS IN HERE. CONFIG WILL BE MADE OVER WEB GUI
WEBAPP_URL=https://raw.githubusercontent.com/myprivacydistro/distro/main/install.php

apt update
apt install php libapache2-mod-php -y
adduser www-data root
wget $WEBAPP_URL
cp install.php /var/www/html
#tar -xf file_name.tar.gz --directory /target/directory

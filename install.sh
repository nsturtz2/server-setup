#! /bin/bash
mkdir /NSCS
cd /NSCS
apt install apache2 mariadb-server libapache2-mod-php7.4 -y
apt -y install php7.4-gd php7.4-mysql php7.4-curl php7.4-mbstring php7.4-intl
apt -y install php7.4-gmp php7.4-bcmath php-imagick php7.4-xml php7.4-zip
mkidr cron
cd cron
mkdir cron.d cron.w cron.h cron.m
cd ..
wget 
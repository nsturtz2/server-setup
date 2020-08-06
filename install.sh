#! /bin/bash
mkdir /NSCS
apt install bind9 php apache2 -y 
apt install mariadb-server libapache2-mod-php7.4 -y
apt -y install php7.4-gd php7.4-mysql php7.4-curl php7.4-mbstring php7.4-intl
apt -y install php7.4-gmp php7.4-bcmath php-imagick php7.4-xml php7.4-zip
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install tasksel -y
cd /var/www/
wget https://download.nextcloud.com/server/releases/nextcloud-19.0.1.zip
apt install unzip tree mlocate -y
unzip nextcloud-19.0.1.zip
chown -R www-data:www-data /var/www/nextcloud
chown -R www-data:www-data /data
sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository universe -y
sudo apt-get update -y
sudo apt-get install certbot python3-certbot-apache python3

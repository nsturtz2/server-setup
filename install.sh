#! /bin/bash
cd /
mkdir NSCS
cd /NSCS
sudo apt update -y
sudo apt install apache2 mariadb-server libapache2-mod-php7.4 tree unzip zip bind9 mlocate -y
sudo apt install php7.4-gd php7.4-mysql php7.4-curl php7.4-mbstring php7.4-intl -y
sudo apt install php7.4-gmp php7.4-bcmath php-imagick php7.4-xml php7.4-zip -y
wall Done Installing!
wget https://raw.githubusercontent.com/Sturtz-Network/server-setup/master/nextcloud.sql
mysql < nextcloud.sql
rm nextcloud.sql
cd /var/www/
wget https://download.nextcloud.com/server/releases/nextcloud-19.0.1.zip
unzip nextcloud-19.0.1.zip
rm -r nextcloud-19.0.1.zip html
chown -R www-data:www-data nextcloud
cd nextcloud
sudo chown -R www-data:www-data /data
sudo -u www-data php /var/www/nextcloud/occ  maintenance:install --database "mysql" --database-name "nextcloud"  --database-user "username" --database-pass "password" --admin-user "admin" --admin-pass "password" --data-dir="/data"
wall Nextcloud is done Installing
cd /
sudo snap install --classic certbot
echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list
wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add 
sudo apt update -y
sudo apt install webmin -y
wall Webmin is Done Installing
cd /NSCS
mkdir scripts cron
cd scripts
touch dir.sh status.sh mysql.sh apache.sh php-packs.sh email.sh
cd /NSCS/cron
mkdir cron.d cron.w cron.h cron.m
cd /NSCS/cron/cron.d
touch cron
cd /NSCS/cron/cron.w
touch cron
cd /NSCS/cron/cron.h
touch cron
cd /NSCS/cron/cron.m
touch cron
chmod -R +X /NSCS
wall Done with NSCS
cd /etc/bind
cp db.127 db.192
cp db.192 db.sturtz.ml
Wall done with Bind9 configuring
wall Done Script!
rm /home/nsturtz/install.sh

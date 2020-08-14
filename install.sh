#! /bin/bash
mkdir /NSCS
cd /NSCS
sudo hostnamectl set-hostname mail.sturtz.ml
sudo nano /etc/hosts
sudo apt install git -y
cd iRedMail/
chmod +x iRedMail.sh
sudo bash iRedMail.sh
git clone https://github.com/iredmail/iRedMail.git
apt install bind9 php -y
apt -y install php7.4-gd php7.4-mysql php7.4-curl php7.4-mbstring php7.4-intl
apt -y install php7.4-gmp php7.4-bcmath php7.4-imagick php7.4-xml php7.4-zip
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
sudo apt-get install certbot python3-certbot-nginx python3 -y 
reboot

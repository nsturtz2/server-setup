#! /bin/bash
mkdir /NSCS
cd /NSCS
sudo hostnamectl set-hostname mail.sturtz.ml
sudo nano /etc/hosts
sudo apt install git -y
git clone https://github.com/iredmail/iRedMail.git
cd iRedMail/
chmod +x iRedMail.sh
sudo bash iRedMail.sh
apt install bind9 php -y
sudo apt install php-imagick php7.4-common php7.4-mysql php7.4-fpm php7.4-gd php7.4-json php7.4-curl  php7.4-zip php7.4-xml php7.4-mbstring php7.4-bz2 php7.4-intl -y
sudo iptables -I INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 443 -j ACCEPT
sudo apt-get update -y && sudo apt-get upgrade -y
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
sudo certbot --nginx --agree-tos --redirect --staple-ocsp --email nate.sturtz@sturtz.ml -d sturtz.ml
wall done

##upgrade
clear
echo V2Ray
sleep 1
echo Check Access Rights...
sleep 0.5
apt-get update --allow-releaseinfo-change
clear
apt-get update
##apt-get upgrade -y
apt install nginx -y
rm -r /etc/nginx/sites-available/default
wget -O /etc/nginx/sites-available/default https://raw.githubusercontent.com/PakGembel/vps-v2ray/main/default

sudo apt install certbot python3-certbot-nginx

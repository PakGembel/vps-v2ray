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
/etc/nginx/sites-available
wget -O /etc/nginx/nginx.conf https://raw.githubusercontent.com/PakGembel/vpn/main/nginx.conf

sudo apt install certbot python3-certbot-nginx

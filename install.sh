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
clear
wget https://raw.githubusercontent.com/PakGembel/vpn/main/v2ray.sh
bash v2ray.sh
systemctl enable v2ray
systemctl start v2ray
wget -O /usr/local/etc/v2ray/config.json https://raw.githubusercontent.com/PakGembel/vps-v2ray/main/config.json
clear
wget https://raw.githubusercontent.com/PakGembel/vpn/main/install-udpgw.sh
bash install-udpgw.sh
clear
sudo ufw allow 'Nginx Full'
systemctl restart v2ray
systemctl restart nginx
clear
apt-get install screen -y
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx --no-redirect -d your_domain -d www.your_domain

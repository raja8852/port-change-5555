# replace 3128 port to 5555
echo " Adding port 5555 to /etc/squid/squid.conf......"
sudo sed -i 's/^http_port.*$/http_port 5555/g'  /etc/squid/squid.conf
echo "Restarting squid......."
sudo systemctl restart squid
sudo ufw allow 5555
echo " New Port 5555 Active......."

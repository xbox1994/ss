#!/usr/bin/env bash
wget --no-check-certificate -O shadowsocks.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
chmod +x shadowsocks-libev.sh
./shadowsocks-libev.sh 2>&1 | tee shadowsocks-libev.log

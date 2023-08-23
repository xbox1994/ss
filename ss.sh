#!/usr/bin/env bash
wget --no-check-certificate -O shadowsocks.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
chmod +x shadowsocks.sh
./shadowsocks.sh 2>&1 | tee shadowsocks.log
service shadowsocks start
wget https://github.com/xtaci/kcptun/releases/download/v20230811/kcptun-linux-amd64-20230811.tar.gz
tar -xvf kcptun-linux-amd64-20230811.tar.gz
./server_linux_amd64 -l :5552 -t 45.76.210.75:8888 -key test -mtu 1400 -sndwnd 2048 -rcvwnd 2048 -mode fast2 > kcptun.log 2>&1 &

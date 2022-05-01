#!/bin/sh
cd /etc/
wget --no-check-certificate "https://raw.githubusercontent.com/mouyase/ChinaListForAdGuardHome/gh-pages/ChinaList.txt" &&
sed -i '1i 208.67.220.220:5353' ChinaList.txt &&
sed -i '2i 208.67.222.222:5353' ChinaList.txt &&
sed -i '3i quic://i.passcloud.xyz:784' ChinaList.txt &&
mv /etc/ChinaList.txt /etc/config/cl.txt &&
/etc/init.d/AdGuardHome restart

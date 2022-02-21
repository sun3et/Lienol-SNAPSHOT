#!/bin/sh
cd /etc/
wget --no-check-certificate "https://adguard.yojigen.tech/ChinaList.txt" &&
sed -i '1i 208.67.222.222:5353' ChinaList.txt &&
sed -i '2i quic://i.passcloud.xyz:784' ChinaList.txt &&
mv /etc/ChinaList.txt /etc/config/ChinaList.txt &&
/etc/init.d/AdGuardHome restart

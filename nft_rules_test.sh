#!/bin/bash

sudo nft delete table inet ztest 2>/dev/null
sudo nft add table inet ztest
sudo nft add chain inet ztest post '{ type filter hook postrouting priority mangle; }'
sudo nft add rule inet ztest post iifname "wg0" oifname "enp0s3" tcp dport { 80, 443 } ct original packets 1-6 queue num 200 bypass
sudo nft add rule inet ztest post iifname "wg0" oifname "enp0s3" udp dport 443 ct original packets 1-6 queue num 200 bypass

echo "added rules"

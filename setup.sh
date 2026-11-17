#!/bin/bash

cd ./zapret-discord-youtube-linux/

sudo rm -f conf.env

sudo tee conf.env > /dev/null <<EOF
interface=enp0s3
strategy=general_fake_tls_auto.bat
router_mode=1
auto_update=false
gamefiltertcp=false
gamefilterudp=false
EOF

chmod o+x ./

sudo chmod -R a+rX .

sudo ./service.sh service restart

cd ../

sudo ./nft_rules_setup.sh

sudo ./tg-ws-setup.sh

echo "done"

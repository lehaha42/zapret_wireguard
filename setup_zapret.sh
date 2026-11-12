#!/bin/bash

ZAPRET_DIR="$HOME/project/zapret-discord-youtube-linux"

cd "$ZAPRET_DIR"
sudo rm -f conf.env
sudo tee conf.env > /dev/null <<EOF
interface=enp0s3
strategy=general_alt11.bat
router_mode=1
auto_update=false
gamefiltertcp=false
gamefilterudp=false
EOF

chmod o+x "$HOME"
chmod o+x "$HOME/project"
sudo chmod -R a+rX .

sudo ./service.sh service restart

sleep 3

cd ../
sudo ./nft_rules_test.sh

echo "done"

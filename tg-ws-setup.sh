#!/bin/bash

(
  cd ./tg-ws-proxy

  source ./venv/bin/activate

  tg-ws-proxy --host 10.8.0.1 --port 1443 --dc-ip 4:149.154.167.220 --secret "$(sudo cat ../keys/tg-ws-secret.key)" -v > ../tg-ws-log.log  2>&1 &
)

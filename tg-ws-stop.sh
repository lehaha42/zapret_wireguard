#!/bin/bash

PID=$(pgrep -f "tg-ws-proxy")

if [ -z "$PID" ]; then
    exit 0
fi

kill $PID
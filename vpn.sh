#!/bin/bash

start_vpn() {
  ss-local -c vpn_config.json -v &
  sleep 5
  echo "VPN started"
}

stop_vpn() {
  pkill ss-local
  echo "VPN stopped"
}

case "$1" in
  start)
    start_vpn
    ;;
  stop)
    stop_vpn
    ;;
  *)
    echo "Usage: $0 {start|stop}"
    exit 1
esac

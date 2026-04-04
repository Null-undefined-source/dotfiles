#!/bin/bash

val=$(nmcli device status | sed -n "2p" | awk '{print $3}')
echo "$val"
case "$val" in
  "unmanaged")
    nmcli networking on ...
    ;;
  "connected")
    nmcli networking off ...
    ;;
esac

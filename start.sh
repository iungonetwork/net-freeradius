#!/bin/bash

if [ ! -f /pki/dh/freeradius ]; then
    openssl dhparam -out /pki/dh/freeradius 2048
fi

ip route add $SIGNET via $SIGNET_GW
radiusd -X
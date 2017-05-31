#!/bin/bash
# bridge.sh

brctl addbr br0
tunctl -u root
tunctl -u root

ifconfig eth0 0.0.0.0 up
ifconfig tap0 0.0.0.0 up
ifconfig tap1 0.0.0.0 up

brctl addif br0 eth0
brctl addif br0 tap0
brctl addif br0 tap1

ifconfig br0 192.168.1.49 netmask 255.255.255.0 broadcast 192.168.1.255
route add default gw 192.168.1.1


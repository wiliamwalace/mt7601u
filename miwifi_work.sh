#!/bin/sh
# remove the driver before
# comment the next two lines if you use no STA mode
ifconfig ra0 down
modprobe -r mt7601Usta
#add new ap driver
modprobe rtutil7601Uap
modprobe mt7601Uap
modprobe rtnet7601Uap
#set ip
ifconfig ra0 up
ifconfig ra0 192.168.199.1
#dhcp the network
dhcpd ra0

#!/bin/sh
#remove the driver before
ifconfig ra0 down
rmmod mt7601Usta
#add new ap driver
modprobe rtutil7601Uap
modprobe mt7601Uap
modprobe rtnet7601Uap
#set ip
ifconfig ra0 up
ifconfig ra0 192.168.199.1
#dhcp the network
dhcpd ra0


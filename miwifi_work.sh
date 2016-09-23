#!/bin/sh
#remove the driver before
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
<<'TEST'
systemctl stop SuSEfirewall2
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward
iptables -t filter -F
iptables -t nat -F
iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
systemctl restart SuSEfirewall2
TEST

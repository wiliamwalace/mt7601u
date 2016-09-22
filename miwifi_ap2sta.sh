#!/bin/sh
ifconfig ra0 down
rmmod rtnet7601Uap
rmmod mt7601Uap
rmmod rtutil7601Uap
pkill -ex dhcpd
modprobe mt7601Usta
ifconfig ra0 up

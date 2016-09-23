#!/bin/sh
ifconfig ra0 down
modprobe -r rtnet7601Uap
modprobe -r mt7601Uap
modprobe -r rtutil7601Uap
pkill -ex dhcpd
modprobe mt7601Usta
ifconfig ra0 up

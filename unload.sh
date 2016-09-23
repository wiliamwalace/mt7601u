#!/bin/sh
ifconfig ra0 down
modprobe -r rtnet7601Uap
modprobe -r mt7601Uap
modprobe -r rtutil7601Uap
pkill -ex dhcpd
modprobe -r mt7601Usta

#!/bin/sh
ifconfig ra0 down
rmmod rtnet7601Uap
rmmod mt7601Uap
rmmod rtutil7601Uap
pkill -ex dhcpd
rmmod mt7601Usta

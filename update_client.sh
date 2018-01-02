#!/bin/sh

NV_VAL=`nvram get dhcpd_static`
FNAME=/cifs1/dhcpd_static.txt

if [ !  -e $FNAME ]; then
  exit
fi
F_VAL=`cat $FNAME`

if [ "$NV_VAL" != "$F_VAL" ]; then
     nvram set dhcpd_static="$F_VAL"
     nvram commit                   
fi        

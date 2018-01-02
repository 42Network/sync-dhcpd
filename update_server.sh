#!/bin/sh

NV_VAL=`nvram get dhcpd_static`
FNAME=/opt/data/dhcpd_static.txt

if [ -e $FNAME ]; then
  F_VAL=`cat $FNAME`
fi

if [ "$NV_VAL" != "$F_VAL" ]; then
     echo $NV_VAL > $FNAME         
fi        

#!/bin/bash

LIST=$(pvscan | grep '/dev/' | gawk '{ print $2 }' | gawk 'BEGIN { FS = "/" } ; { print substr($3,1,3) }')

for DEVICE in $LIST
do
  printf "$DEVICE : "; smartctl -H "/dev/$DEVICE" | grep ':' | gawk '{ print $6 }'
done


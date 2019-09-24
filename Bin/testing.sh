#!/bin/bash

HOSTNAME=`hostname`
FILENAME="FAP_DATA_${HOSTNAME}_$(date +D%d_%HH)"

cd /root/bin/fapredep
./fapredep.sh -e 20 -t 15 -o /data/${FILENAME}

# echo "./fapredep.sh -e 20 -t 15 -o /data/${FILENAME}"

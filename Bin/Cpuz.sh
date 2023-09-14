#!/usr/bin/bash

 ###  /sys/devices/system/cpu/cpu?/cpuidle/state*/disable to 1.

Folder=/sys/devices/system/cpu/cpu?/cpuidle/state*/disable

if (($1 >= 0 && $1 <= 1)); then 

  for entry in `ls -d $Folder`; do
      echo $1 > $entry
  done
else
  echo " " 
  echo "Invalid Parameter entered." 
  echo " " 
  echo "Performance == 1."
  echo "PowerSave == 0."
  echo " " 
fi


#!/usr/bin/bash
AppName=$1

as $AppName.s -o $AppName.o
gcc -o $AppName.out $AppName.o -nostdlib -static


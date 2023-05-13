#!/bin/bash
screen -r `screen -ls | grep 'Detached' | gawk -F . '/miner/ {print $1}' | sed -e 's/[ \t]*//'`

#!/bin/bash
top -l1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'

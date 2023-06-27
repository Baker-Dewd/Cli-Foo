#!/bin/bash
top -l1 | head -4 | tail -1 | awk '{print $3}'

#!/bin/bash
tmux new -s envtmux \; \
select-pane -t 0 \; send-keys '~/Bin/get-wx.sh' C-m \; 				split-window -h -p 45 \; \
select-pane -t 1 \; send-keys '~/Bin/get-moon.sh' C-m \; 			split-window -v -p 55 \; \
select-pane -t 2 \; send-keys '~/Bin/get-eth.sh' C-m \;

##
#
# This file assumes you have cmatrix and nmon installed.
# Layout is optimized for a 1080p screen. Your window
# spacing will vary outside of 1920x1080
#
# I am usinug tmux to hold screen output from miners
# to prevent dealing with nested tmux screens. 
# 
# Tmux prefix key :: Ctl+b
# tmux detach from console: Ctl+b then d
#
# screen prefix :: Ctl+a
# screen detach from console is Ctl+a then d
#
#
# Rapid testing of changes : 
# tmux  kill-session -t envtmux
# 
##




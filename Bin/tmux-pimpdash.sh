#!/bin/bash

## Test for the tmux session. If exists, join session, else, below. 

tmux new -s pimpdashcm0 \; \
select-pane -t 0 \; send-keys 'nmon' C-m c d n l k \; 		split-window -h -p 65 \; \
select-pane -t 1 \; send-keys 'nmon' C-m r \; 			split-window -h -p 50 \; \
select-pane -t 2 \; send-keys '~/Bin/get-skrenz.sh' C-m \; 	split-window -v -p 65 \; \
select-pane -t 3 \; send-keys '~/Bin/get-skrenz.sh' C-m \; 	split-window -v -p 50 \; \
select-pane -t 4 \; send-keys '~/Bin/get-skrenz.sh' C-m \;	\
select-pane -t 1 \; split-window -v -p 63 \; 			send-keys 'watch sensorz.sh' C-m \; \
select-pane -t 2 \; split-window -v -p 60 \; 			send-keys 'cmatrix -B' C-m \; \


# #
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
# tmux  kill-session -t pimpdashcm0
# 
##




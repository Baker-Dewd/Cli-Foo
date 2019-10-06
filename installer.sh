#!/bin/bash

## Remove .bashrc -> Link to Bashrc in Cli-Foo
## Remove .tmux.conf -> Link to tmux.conf in Cli-Foo
## Linx ~/Cli-Foo/Bin -> ~/bin folder and copy 

[[ -f ~/.bashrc ]] && rm -f ~/.bashrc
ln -s ~/Cli-Foo/DotFiles/bashrc ~/.bashrc

[[ -f ~/.tmux.conf ]] && rm -f ~/.tmux.conf
ln -s ~/Cli-Foo/DotFiles/tmux.conf ~/.tmux.conf

[[ -f ~/bin ]] && rm -rf ~/bin
ln -s ~/Cli-Foo/Bin ~/bin


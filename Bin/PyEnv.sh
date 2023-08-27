#!/bin/bash

## Set our PyEnv Variables if we have them. 
## Otherwise just out put 'Nan'. 

PyEnv="NaN"
if command -v pyenv
  then
    PyEnv-$(pyenv versions | grep '*' | awk '{print $2}')
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"         
fi
export $PyEnv
echo $PyEnv

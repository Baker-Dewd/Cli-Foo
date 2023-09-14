## Installing Pyenv

### Instructions condensed from: 
https://bgasparotto.com/install-pyenv-ubuntu-debian

1. Install dependencies:
```
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev git
```

2. Get the code:
```
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
```

3. Set the Initial Env so CliFoo doesn't complain: 
```
pyenv install 3.11.5 && pyenv local 3.11.5 && pip3 install psutil
```



Step 3 will instruct you to take more action. But the following is already in .bashrc


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"


## Going further: 
### Get a list of all available versions: 
```
pyenv install --list
```

Install a version listed with --list.
```
pyenv install <version>
```

Set to a particular terminal session. 
```
pyenv local <version> 

```

Or Globally 
```
pyenv global <version>
```


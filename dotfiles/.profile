#!/usr/bin/env bash

# set aws-vault backend
export AWS_VAULT_BACKEND="file"

# initialize direnv shell hooks
type direnv &>/dev/null && eval "$(direnv hook ${SHELL})"

# initialize pyenv shell hooks
type pyenv &>/dev/null && eval "$(pyenv init -)"

# initialize pyenv virtualenv shell hooks
type pyenv &>/dev/null && eval "$(pyenv virtualenv-init -)"

# initialize node version manager
export NVM_DIR="$HOME/.nvm"
[ ! -d "$NVM_DIR" ] && mkdir "$NVM_DIR" # ensure .nvm dir exists
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # load nvm
# if npm not found we will install lastest node using node version manager
command -v npm >/dev/null 2>&1 || { nvm install node }

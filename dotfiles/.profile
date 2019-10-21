#!/usr/bin/env bash

# set aws-vault backend
export AWS_VAULT_BACKEND="file"

# initialize direnv shell hooks
type direnv &>/dev/null && eval "$(direnv hook ${SHELL})"

# initialize pyenv shell hooks
type pyenv &>/dev/null && eval "$(pyenv init -)"

# initialize pyenv virtualenv shell hooks
type pyenv &>/dev/null && eval "$(pyenv virtualenv-init -)"

#!/usr/bin/env bash
# shellcheck disable=SC2206

#
# Z Shell Startup File
#

# `.zprofile' is similar to `.zlogin', except that it is sourced before `.zshrc'.
# `.zprofile' is meant as an alternative to `.zlogin' for ksh fans; the two are not intended to be used together, although this could certainly be done if desired.

[ ! -d "$ZDOTCACHEDIR" ] && mkdir -p "$ZDOTCACHEDIR" # ensure ~/.cache/zsh dir exists

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

#
# load machine specific configuration
#
[ -f "$0.local" ] && source "$0.local"

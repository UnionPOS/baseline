#!/usr/bin/env bash
# shellcheck disable=SC2206

#
# Z Shell Startup File
#
# `.zshenv' is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path, plus other important environment variables.
# `.zshenv' should not contain commands that produce output or assume the shell is attached to a tty.

# There are five startup files that zsh will read commands from: (in load order)

# $ZDOTDIR/.zshenv
# $ZDOTDIR/.zprofile
# $ZDOTDIR/.zshrc
# $ZDOTDIR/.zlogin
# $ZDOTDIR/.zlogout


# set aws-vault backend to encrypted file to facilitate sharing aws-vault keychain with docker containers
export AWS_VAULT_BACKEND="file"

export ZDOTCACHEDIR="${HOME}/.cache/zsh"

# If ZDOTDIR is not set, then the value of HOME is used; this is the usual case.
export ZDOTDIR="${HOME}/.zsh"

#
# load machine specific configuration
#
echo $0.local
[ -f .zshenv.local ] && source .zshenv.local

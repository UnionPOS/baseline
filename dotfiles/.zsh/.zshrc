#!/usr/bin/env bash
# shellcheck disable=SC2206

#
# Z Shell Startup File
#
# `.zshrc' is sourced in interactive shells.
# It should contain commands to set up aliases, functions, options, key bindings, etc.

##############################################################################
# ===== Basic options
##############################################################################
# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt AUTO_CD

# Allow comments even in interactive shells (especially for Muness)
# setopt INTERACTIVE_COMMENTS

source "${ZDOTDIR}/.zsh_bindkeys"
source "${ZDOTDIR}/.zsh_colors"
source "${ZDOTDIR}/.zsh_completion"
source "${ZDOTDIR}/.zsh_history"
source "${ZDOTDIR}/.zsh_prompt"

# source aliases functions and plugins last to ensure they are not overridden by defaults
source "${ZDOTDIR}/.zsh_aliases"
source "${ZDOTDIR}/.zsh_functions"
source "${ZDOTDIR}/.zsh_plugins"

# https://github.com/wting/autojump
source /usr/local/share/autojump/autojump.zsh 2>/dev/null

#
# load machine specific configuration
#
[ -f "$0.local" ] && source "$0.local"

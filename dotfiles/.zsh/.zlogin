#!/usr/bin/env bash
# shellcheck disable=SC2206

#
# Z Shell Startup File
#

# `.zlogin' is sourced in login shells.
# It should contain commands that should be executed only in login shells.

# `.zlogin' is not the place for alias definitions, options, environment variable settings, etc.;
# as a general rule, it should not change the shell environment at all.
# Rather, it should be used to set the terminal type and run a series of external commands (fortune, msgs, etc).

#
# load machine specific configuration
#
[ -f "$0.local" ] && source "$0.local"

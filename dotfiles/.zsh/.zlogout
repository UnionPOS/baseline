#!/usr/bin/env bash
# shellcheck disable=SC2206

#
# Z Shell Startup File
#
# `.zlogout' is sourced when login shells exit.

#
# load machine specific configuration
#
[ -f "$0.local" ] && source "$0.local"

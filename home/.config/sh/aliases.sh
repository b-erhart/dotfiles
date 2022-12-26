#!/usr/bin/env sh

# ALIASES

alias lx=exa
alias wget="wget --hsts-file=\"$XDG_CACHE_HOME/wget-hsts\""

# source local aliases if they exist
[ -f "$XDG_CONFIG_HOME/sh/aliases_local.sh" ] && . "$XDG_CONFIG_HOME/sh/aliases_local.sh"

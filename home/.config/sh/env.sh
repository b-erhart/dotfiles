#!/usr/bin/env sh

# ENVIRONMENT

# XDG directories
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

mkdir -p "$XDG_CACHE_HOME"
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_DATA_HOME"
mkdir -p "$XDG_STATE_HOME"

# configuration
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

mkdir -p "$XDG_CONFIG_HOME/readline"

# source local environment if it exists
[ -f "$XDG_CONFIG_HOME/sh/env_local.sh" ] && . "$XDG_CONFIG_HOME/sh/env_local.sh"

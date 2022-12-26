#!/usr/bin/env zsh

# ZSHRC

# make sure required directories exist
[ ! -d "$XDG_CONFIG_HOME/zsh/" ] && mkdir -p "$XDG_CONFIG_HOME/zsh/"
[ ! -d "$XDG_DATA_HOME/zsh/" ] && mkdir -p "$XDG_DATA_HOME/zsh/"

# set prompt
autoload -U colors && colors
PS1='%F{white}%1~%f %F{green}❯%f '

# set up history
[ ! -f "$XDG_DATA_HOME/zsh/history" ] && touch "$XDG_CONFIG_HOME/zsh/history" # create history file if necessary
HISTFILE="$XDG_DATA_HOME/zsh/history" # set history file
HISTSIZE=1000000 # history size in memory
SAVEHIST=1000000 # history size in history file
setopt share_history # share history between concurrent sessions

# set up auto completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# load aliases
[ -f "$XDG_CONFIG_HOME/sh/aliases.sh" ] && source "$XDG_CONFIG_HOME/sh/aliases.sh"

# load plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

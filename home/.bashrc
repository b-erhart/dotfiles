#!/usr/bin/env bash

# BASHRC

# bash specific environment
export HISTFILE="$XDG_STATE_HOME/bash/history"

mkdir -p "$XDG_STATE_HOME/bash"


# if not running interactively, exit
[[ $- != *i* ]] && return

# set prompt
export PS1="\[\e[37m\]\W\[\e[m\] \[\e[32m\]\\$\[\e[m\] "

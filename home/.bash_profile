#!/usr/bin/env bash

# BASH ENVIRONMENT

# general environment
if [ -f "$HOME/.config/sh/env.sh" ]; then
	. "$HOME/.config/sh/env.sh"
else
	echo "'$HOME/.config/sh/env.sh' does not exist - unable to set up environment. Abort."
	exit 1
fi

# source bashrc
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

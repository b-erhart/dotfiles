#!/usr/bin/env sh

# DOWNLOAD DOTTER

cd -- "$(dirname -- "$0")" || ( echo "Failed to enter dotfiles directory. Abort" && exit )
[ -f ./dotter ] && rm ./dotter
wget --no-verbose --show-progress "https://github.com/SuperCuber/dotter/releases/latest/download/dotter"

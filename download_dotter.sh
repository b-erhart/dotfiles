#!/usr/bin/env sh

# DOWNLOAD DOTTER

# Enter directory of this script
cd -- "$(dirname -- "$0")" || ( echo "Failed to enter dotfiles directory. Abort." && exit )

# Remove the dotter executable if it already exists
[ -f ./dotter ] && rm ./dotter

# Download the latest dotter executable
wget --no-verbose --show-progress "https://github.com/SuperCuber/dotter/releases/latest/download/dotter"

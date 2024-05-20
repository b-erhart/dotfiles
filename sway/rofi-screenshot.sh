#!/bin/bash

opts="Window (save)\nArea (save)\nCurrent monitor (save)\nWindow (copy)\nArea (copy)\nCurrent monitor (copy)"

selection=$(echo -e $opts | rofi -p "Screenshot" -i -dmenu)

case $selection in
    "Window (save)")
        grimshot save window
        ;;
    "Area (save)")
        grimshot save area
        ;;
    "Current monitor (save)")
        grimshot save output
       ;;
    "Window (copy)")
        grimshot copy window
        ;;
    "Area (copy)")
        grimshot copy area
        ;;
    "Current monitor (copy)")
        grimshot copy output
       ;;
esac

#!/bin/bash

opts="Shutdown\nReboot\nSleep\nLogout"

selection=$(echo -e $opts | rofi -i -dmenu)

case $selection in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Sleep)
        systemctl suspend
        ;;
    Logout)
        swaymsg exit
        ;;
esac

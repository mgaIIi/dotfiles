#!/bin/bash

options="Logout\nSuspend\nReboot\nShutdown"

selected=$(echo -e $options | rofi -dmenu -i -p "" -theme ~/.config/rofi/powermenu.rasi)

case $selected in
    Logout)
        i3-msg exit
        ;;
    Suspend)
        systemctl suspend
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
esac

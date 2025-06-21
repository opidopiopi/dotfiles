#!/bin/bash

entries="⏻ Shutdown\n Lock\n⇠ Logout\n⭮ Reboot"

selected=$(echo -e $entries|wofi --width 250 --height 210 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  lock)
    exec swaylock --image ~/files/images/SBKjnxm.jpg;;
    #exec .scripts/blur-lock.sh;;
  logout)
    hyprctl dispatch exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac

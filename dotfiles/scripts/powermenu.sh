#!/bin/bash

function powermenu {
  options=" Cancel\n Shutdown\n Reboot\n Logout\n Lock"
  selected=$(echo -e "$options" | dmenu)

  if [[ $selected = "Shutdown" ]]; then
    exec /usr/bin/shutdown
  elif  [[ $selected = "Rebbot" ]]; then
    exec /usr/bin/reboot
  elif [[ $selected = "Logout" ]]; then
    exec pkill -KILL -u $USER 
  elif [[ $selected = "Lock" ]]; then
    exec i3lock -i ~/.config/backgrounds/175.png
  elif [[ $selected = "Cancel" ]]; then
    return
  fi
}

powermenu

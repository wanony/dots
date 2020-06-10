#!/bin/bash

# literally stolen from arcolinux

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be


feh --bg-fill /home/zzem/Pictures/papes/LukeSmith/Etc/walk.jpg &
#feh --randomize --bg-fill /home/zzem/Pictures/papes/
#xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/sxhkd/sxhkdrc &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
picom --experimental-backends --backend glx &  #--config $HOME/.config/picomc/picom.onf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/opt/piavpn/bin/pia-client --quiet &
udiskie &
redshift &
run volumeicon &
run discord &
run spotify &

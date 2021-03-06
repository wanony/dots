#!/bin/bash

# literally stolen from arcolinux

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
feh --bg-fill /home/zzem/Pictures/papes/LukeSmith/Etc/walk.jpg &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

#xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/sxhkd/sxhkdrc &

# variety is a tool for changing wallpaper at intervals
#run variety &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
# blueberry is for bluetooth shit
#blueberry-tray &
picom --experimental-backends --backend glx &  #--config $HOME/.config/picomc/picom.onf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/opt/piavpn/bin/pia-client --quiet &
udiskie &
redshift &
run volumeicon &
flatpak run com.discordapp.Discord & # run discord &
run spotify &

#!/bin/bash

if [ "$(playerctl --player=spotify --ignore-player=chromium status)" = "Stopped" ]; then
    echo "No music is playing"
elif [ "$(playerctl --player=spotify --ignore-player=chromium status)" = "Paused"  ]; then
    polybar-msg -p "$(pgrep -f "mainbar-bspwm")" hook spotify-play-pause 2 >/dev/null
    playerctl --player=spotify --ignore-player=chromium metadata --format "{{ title }} - {{ artist }}"
else # Can be configured to output differently when player is paused
    polybar-msg -p "$(pgrep -f "mainbar-bspwm")" hook spotify-play-pause 1 > /dev/null
    playerctl --player=spotify --ignore-player=chromium metadata --format "{{ title }} - {{ artist }}"
fi

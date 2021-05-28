#!/bin/sh

#TODO this should be done without a shell script but I am lazy and this works for now
#keyboard
setxkbmap us -variant colemak

#xwallpaper
sh ~/.dwm/scripts/wallpaper.sh &

picom --experimental-backends &


#!/bin/sh

while true
do
        dir=(~/wallpapers/)
        wallpaper=$(ls $dir | shuf -n 1)
        xwallpaper --zoom  "$dir$wallpaper" &
        sleep 5m
done


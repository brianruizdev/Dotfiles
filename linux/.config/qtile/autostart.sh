#!/bin/bash

udiskie -t &
nm-applet &
blueman-applet &
volumeicon &
cbatticon -u 5 &
wireplumber &
feh --bg-fill ~/.config/wallpapers/neon.jpg &
picom &
dunst &
unclutter --start-hidden &

# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch
polybar left &
polybar center &
polybar right &


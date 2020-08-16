#!/bin/sh

# Set wallpaper
~/.fehbg &

# Start compositor
picom -b --config $HOME/.config/picom/picom.conf --experimental-backends &

# Start wm
exec sowm

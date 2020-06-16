#!/bin/sh

setxkbmap -option caps:escape

bud ~/Wallpapers/Girl.jpg &
picom -b --config $HOME/.config/picom/picom.conf --experimental-backends &

exec sowm

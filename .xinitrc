#!/bin/sh

setxkbmap -option caps:escape

xrdb -merge ~/.Xresources &
picom -b --config /home/dilyn/.config/picom/picom.conf --experimental-backends &
./.fehbg & 

exec sowm

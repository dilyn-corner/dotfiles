#!/bin/sh

setxkbmap -option caps:escape

picom -b --config /home/dilyn/.config/picom/picom.conf --experimental-backends &
./.fehbg & 

exec sowm

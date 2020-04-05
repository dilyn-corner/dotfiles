#!/bin/sh

setxkbmap -option caps:escape

wal -R &
xrdb -merge ~/.Xresources &
picom -b --config /home/dilyn/.config/picom/picom.conf &

exec sowm

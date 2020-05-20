#!/bin/sh

setxkbmap -option caps:escape

picom -b --config /home/dilyn/.config/picom/picom.conf --experimental-backends &
./.fehbg & 

exec sowm

# This is just a test. Do not panic.
#exec dbus-launch --exit-with-session startplasma-x11

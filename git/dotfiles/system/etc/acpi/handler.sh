#!/bin/sh

case $1 in 
    video/brightnessdown)
        xbacklight -dec 10;;
    video/brightnessup)
        xbacklight -inc 10;;
    button/kbdillumdown)
        xbacklight -ctrl smc::kbd_backlight -dec 10;;
    button/kbdillumup)
        xbacklight -ctrl smc::kbd_backlight -inc 10;;
    button/mute)
        amixer sset Master toggle;;
    button/volumedown)
        amixer -- sset Master playback 5%-;;
    button/volumeup)
        amixer -- sset Master playback 5%+;;
esac

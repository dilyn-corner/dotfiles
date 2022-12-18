#!/bin/sh

case $1 in 
    video/brightnessdown)
        brightnessctl s 10%-;;
    video/brightnessup)
        brightnessctl s +10%;;
    button/kbdillumdown)
        brightnessctl -d smc::kbd_backlight s 20%-;;
    button/kbdillumup)
        brightnessctl -d smc::kbd_backlight s +20%;;
    button/mute)
        amixer sset Master toggle;;
    button/volumedown)
        amixer -- sset Master 5%-;;
    button/volumeup)
        amixer -- sset Master 5%+;;
esac

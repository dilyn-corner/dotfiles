# Let users in the video group affect brightness
chgrp -R video /sys/class/leds/smc::kbd_backlight
chgrp -R video /sys/class/backlight/intel_backlight

chmod -R g+w   /sys/class/leds/smc::kbd_backlight
chmod -R g+w   /sys/class/backlight/intel_backlight

# Restore backlight and keyboard brightness
brightnessctl -r 2>&1
brightnessctl -d smc::kbd_backlight -r 2>&1

# Restore volume
alsactl restore

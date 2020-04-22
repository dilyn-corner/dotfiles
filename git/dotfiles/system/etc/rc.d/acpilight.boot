#!/bin/sh

/bin/chgrp video /sys/class/backlight/*/brightness
/bin/chmod g+w /sys/class/backlight/*/brightness

/bin/chgrp video /sys/class/leds/*/brightness
/bin/chmod g+w /sys/class/leds/*/brightness

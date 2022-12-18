# We can't use the kernel command line to change the scheduler
echo kyber > /sys/block/nvme0n1/queue/scheduler

# Make /mnt/share dilyn:dilyn
chmod dilyn:dilyn /mnt/share

# Load the wifi module
modprobe wl >/dev/null 2>&1

# Start wpa_supplicant & dhcpcd in the background
wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf >/dev/null 2>&1
dhcpcd wlan0 >/dev/null 2>&1 &

# Let users in the video group affect brightness
chgrp -R video /sys/class/leds/smc::kbd_backlight
chgrp -R video /sys/class/backlight/intel_backlight
chmod -R g+w   /sys/class/leds/smc::kbd_backlight
chmod -R g+w   /sys/class/backlight/intel_backlight

brightnessctl s 100%

# Restore volume level
alsactl restore

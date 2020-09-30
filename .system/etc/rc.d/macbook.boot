# Load the wifi module
modprobe wl >/dev/null 2>&1

# Start wpa_supplicant & dhcpcd in the background
wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf >/dev/null 2>&1
dhcpcd wlan0 >/dev/null 2>&1 &

# Turn on the Macbook's fan
mbpfan >/dev/null 2>&1 &

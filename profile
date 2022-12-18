# Insane default build variables
export CFLAGS="-march=native -mtune=native -O3 -fno-math-errno -pipe -flto=thin"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS=-j$(nproc)
export LDFLAGS=" "

# Sane default environment variables
export ENV=$HOME/.shrc
export GOPATH=$HOME/.go
export PATH=$HOME/.local/bin:/snap/bin:/usr/lib/ccache/bin:$HOME/.cargo/bin:$HOME/.go/bin:$PATH
export KISS_SU=doas
export KISS_CHK=b3sum
export KISS_TMPDIR=/tmp
export KISS_COMPRESS=zst
export KISS_HOOK=/var/db/kiss/KISS-me/hooks
export PF_INFO="ascii title os host kernel uptime pkgs memory palette"

# Debian variables
export DEBFULLNAME="Dilyn Corner"
export DEBEMAIL="dilyn.corner@canonical.com"
#export SNAPCRAFT_STORE_CREDENTIALS=$(cat $HOME/.config/snapcraft/credentials)
export SNAPCRAFT_BUILD_INFO=1

# Sane default programs
#export PAGER="vim -c PAGER -"
export EDITOR=vim
export TERMINAL=footclient
export BROWSER=chromium

# Wayland runtime dir
mkdir -pm 0700 "${XDG_RUNTIME_DIR:=/tmp/$(id -u)-runtime-dir}"
export XDG_RUNTIME_DIR
export XDG_CURRENT_DESKTOP=Wayfire
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.sock"

#[ "$WAYLAND_DISPLAY" ] || exec wayfire

# SDL for QEMU
export SDL_VIDEODRIVER=wayland

echo -en "\e]P02E2E2E"
echo -en "\e]P1F7748D"
echo -en "\e]P276EDA3"
echo -en "\e]P3F7BF65"
echo -en "\e]P44DA4F0"
echo -en "\e]P5E88BE0"
echo -en "\e]P61DDBC9"
echo -en "\e]P7E9E9E9"
echo -en "\e]P85C5C5C"
echo -en "\e]P9FF9CAA"
echo -en "\e]PAA4EDAC"
echo -en "\e]PBF7E2A1"
echo -en "\e]PCB7C8FF"
echo -en "\e]PDEDBBE9"
echo -en "\e]PE81F5E1"
echo -en "\e]PFF5F5F5"
clear #for background artifacting

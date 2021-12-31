# Insane default build variables
export CFLAGS="-march=native -mtune=native -O3 -fno-math-errno -pipe -flto=thin"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS=-j24
export LDFLAGS=" "

# Sane default environment variables
export ENV=$HOME/.shrc
export PATH=/usr/lib/ccache/bin:$HOME/.local/bin:/usr/bin
export KISS_SU=doas
export KISS_CHK=b3sum
export KISS_TMPDIR=/tmp
export KISS_COMPRESS=zst
export KISS_HOOK=/var/db/kiss/KISS-me/hooks
export PASH_KEYID=dilyn.corner@tutanota.com
export PASH_DIR=$HOME/git/pass-store
export PASH_LENGTH=25
export PASH_TIMEOUT=0
export PASH_CLIP=wl-copy
export PF_INFO="ascii title os host kernel uptime pkgs memory palette"

# Sane default programs
export PAGER="vim -c PAGER -"
export EDITOR=vim
export TERMINAL=footclient
export BROWSER=chromium

# For jj
export IRC_DIR=$HOME/.cache

# Wayland runtime dir
mkdir -pm 0700 "${XDG_RUNTIME_DIR:=/tmp/$(id -u)-runtime-dir}"
export XDG_RUNTIME_DIR
export XDG_CURRENT_DESKTOP=Wayfire

#[ "$WAYLAND_DISPLAY" ] || exec wayfire

# SDL for QEMU
export SDL_VIDEODRIVER=wayland

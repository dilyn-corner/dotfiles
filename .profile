# Insane default build variables
export CFLAGS="-march=native -mtune=native -O3 -fno-math-errno -pipe -flto=thin"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS=-j4
export LDFLAGS=" "

# Sane default environment variables
export ENV=$HOME/.shrc
export PATH=/usr/lib/ccache/bin:$HOME/.local/bin:/usr/bin
export KISS_PATH=$HOME/git/KISS-me/core
export KISS_PATH=$KISS_PATH:$HOME/git/KISS-me/extra
export KISS_PATH=$KISS_PATH:$HOME/git/KISS-me/wayland
export KISS_PATH=$KISS_PATH:/var/db/kiss/wyverkiss/core
export KISS_PATH=$KISS_PATH:/var/db/kiss/wyverkiss/extra
export KISS_PATH=$KISS_PATH:/var/db/kiss/wyverkiss/gnu
export KISS_PATH=$KISS_PATH:$HOME/git/community/community
export KISS_HOOK=$HOME/git/KISS-me/hooks
export KISS_TMPDIR=/tmp
export KISS_COMPRESS=xz
export PASH_KEYID=dilyn.corner@tutanota.com
export PASH_DIR=$HOME/git/pass-store
export PASH_LENGTH=25
export PASH_TIMEOUT=60
export PF_INFO="ascii title os host kernel uptime pkgs memory palette"

# Dumb wayland variables
export QT_QPA_PLATFORM=wayland-egl
export BEMENU_BACKEND=wayland
export QT_SCALE_FACTOR=1.5

# Sane default programs
export EDITOR=vim
export VISUAL=$EDITOR
export TERMINAL=foot
export BROWSER=falkon

# Wayland runtime dir
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/tmp/$(id -u)-runtime-dir}"

[ -d "$XDG_RUNTIME_DIR" ] || {
    mkdir -p   "$XDG_RUNTIME_DIR"
    chmod 0700 "$XDG_RUNTIME_DIR"
}

# Insane default build variables
export CFLAGS="-march=native -mtune=native -O3 -fno-math-errno -pipe -flto=thin"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS=-j4
export LDFLAGS=" "

# Sane default environment variables
export ENV=$HOME/.shrc
export PATH=/usr/lib/ccache/bin:$HOME/.local/bin:/usr/bin
export KISS_HOOK=/var/db/kiss/personal/hooks
export KISS_TMPDIR=/tmp
export KISS_COMPRESS=xz
export KISS_GREP=rg
export PASH_KEYID=dilyn.corner@tutanota.com
export PASH_DIR=$HOME/git/pass-store
export PASH_LENGTH=25
export PASH_TIMEOUT=60
export PF_INFO="ascii title os host kernel uptime pkgs memory palette"

# Sane default programs
export EDITOR=vim
export TERMINAL=foot
export BROWSER=chromium

# Wayland runtime dir
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/tmp/$(id -u)-runtime-dir}"

[ -d "$XDG_RUNTIME_DIR" ] || {
    mkdir -p   "$XDG_RUNTIME_DIR"
    chmod 0700 "$XDG_RUNTIME_DIR"
}

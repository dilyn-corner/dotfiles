# Sane default build variables
export CFLAGS="-march=native -mtune=native -pipe -O3"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j4"
export LDFLAGS=" "

# Sane default environment variables
export ENV=$HOME/.shrc
export TZ=EST5EDT
export PATH="$HOME/.local/bin:$PATH"
export KISS_PATH="$KISS_PATH:$HOME/git/community/community"
#export KISS_PATH="$HOME/git/KISS-wayland/wayland:$KISS_PATH"
#export KISS_PATH="$HOME/git/KISS-dbus/kiss-dbus:$KISS_PATH"
#export KISS_PATH="$HOME/git/KISS-kde/KISS-kde:$KISS_PATH"
export KISS_PATH="$HOME/git/KISS-me/KISS-me:$KISS_PATH"
export KISS_COMPRESS=xz
export PASH_DIR=$HOME/git/pass-store
export PASH_KEYID=dilyn.corner@tutanota.com
export PASH_LENGTH=25
export PASH_TIMEOUT=60
export BLIS_NUM_THREADS="4"
export PF_INFO="title os host kernel uptime pkgs memory palette"

# Sane default programs
export EDITOR="nvim"
export VISUAL="$EDITOR"
export TERMINAL="st"
export BROWSER="falkon"
export FILE="fff"

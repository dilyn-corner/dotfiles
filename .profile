# Sane default build variables
export CFLAGS="-march=native -mtune=native -pipe -O3"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j4"
export LDFLAGS=" "

# Sane default environment variables
export ENV=/home/dilyn/.shrc
export TZ=EST5EDT
export PATH="/usr/lib/ccache/bin:/home/dilyn/.local/bin:$PATH"
export KISS_PATH="/home/dilyn/git/KISS-me:$KISS_PATH:/home/dilyn/git/community/community"
export KISS_HOOK="/home/dilyn/.local/bin/kiss-hook"
export KISS_COMPRESS=xz
export PASH_DIR=/home/dilyn/git/pass-store
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

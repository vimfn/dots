export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

eval "$(brew shellenv)"
. "$HOME/.local/share/cargo/env"

[ -f "/Users/ag/.ghcup/env" ] && . "/Users/ag/.ghcup/env" # ghcup-env

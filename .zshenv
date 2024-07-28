export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="chromium-browser"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export XAUTHORITY=/tmp/Xauthority
export XINITRC="$HOME/.xinitrc"
export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE=$HOME/.local/share/.zsh_history

export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"

# [ -z "$NVM_DIR" ] && export NVM_DIR="$XDG_DATA_HOME/nvm"
[ -z "$N_PREFIX" ] && export N_PREFIX="$XDG_DATA_HOME/n"
export PATH="$N_PREFIX/bin:$PATH"

export BUN_INSTALL="$XDG_DATA_HOME/bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/go/bin:$PATH

# https://unix.stackexchange.com/a/87763/531189
# export LC_ALL=C

export MPD_HOST="localhost"
export MPD_PORT="6600"

# Starting X
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

[ -f "/home/ag/.local/share/cargo/env" ] && . "/home/ag/.local/share/cargo/env" # cargo-env
[ -f "/home/ag/.ghcup/env" ] && . "/home/ag/.ghcup/env" # ghcup-env

if [ -e /home/ag/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ag/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

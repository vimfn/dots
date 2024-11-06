export EDITOR="nvim"
export TERMINAL="alacritty"
# export BROWSER="brave"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# export XAUTHORITY=/tmp/Xauthority
# export XINITRC="$HOME/.xinitrc"
# export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"

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

# https://stackoverflow.com/a/8161863/19218166
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export ANDROID_HOME=$HOME/.android/sdk
export ANDROID_SDK_ROOT=$HOME/.android/sdk # for compatibility
export ANDROID_USER_HOME=$HOME/.android # default

# export MPD_HOST="localhost"
# export MPD_PORT="6600"

# Starting X
# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#   exec startx
# fi

# [ -f "/home/ag/.local/share/cargo/env" ] && . "/home/ag/.local/share/cargo/env" # cargo-env
# [ -f "/home/ag/.ghcup/env" ] && . "/home/ag/.ghcup/env" # ghcup-env


# if [ -e /home/ag/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ag/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# MACOS
eval "$(/opt/homebrew/bin/brew shellenv)"
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent
. "/Users/ag/.local/share/cargo/env"
export PATH="/Users/ag/.local/state/fnm_multishells/24982_1729160872791/bin":$PATH
export FNM_MULTISHELL_PATH="/Users/ag/.local/state/fnm_multishells/24982_1729160872791"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="/Users/ag/.local/share/fnm"
export FNM_LOGLEVEL="info"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_COREPACK_ENABLED="false"
export FNM_RESOLVE_ENGINES="false"
export FNM_ARCH="arm64"
rehash

# https://apple.stackexchange.com/a/427568/571644
SHELL_SESSIONS_DISABLE=1

if [ -z "$ZSH_COMPDUMP" ]; then
	ZSH_COMPDUMP="${XDG_CACHE_HOME}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $ZDOTDIR/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme romkatv/powerlevel10k 

# Tell Antigen that you're done.
antigen apply

eval "$(zoxide init zsh)"

# pywal for alacritty
#if [[ $TERM == "alacritty" ]]; then
if ! [[ "$TERM_PROGRAM" == "vscode" ]]; then
	(cat ~/.cache/wal/sequences &)
fi

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# bun completions
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

source $HOME/.zshenv

# aliases
alias v='nvim'
alias f='open "$(fzf)"'
alias reboot='systemctl reboot'
alias t='tmux-sessionizer'
alias cat='bat'
alias pn='pnpm'
alias ydl='yt-dlp -f "bestvideo[height<=720]+bestaudio/best[height<=720]" -o "%(title)s.%(ext)s" '
alias ydlp='i=1; yt-dlp --playlist-start $i -f "bestvideo[height<=720]+bestaudio/best[height<=720]" -o "%(playlist_index)s. %(title)s.%(ext)s"'
alias mm='ncmpcpp'
alias nw='newsboat'
alias rd='cat ~/notes/README.md'
alias y='yazi'

# 🔒
setopt HIST_IGNORE_SPACE
alias jrnl=" jrnl"

[ -f "/home/ag/.ghcup/env" ] && . "/home/ag/.ghcup/env" # ghcup-env
# pnpm
export PNPM_HOME="/home/ag/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

countdown() {
    start="$(( $(date '+%s') + $1))"
    while [ $start -ge $(date +%s) ]; do
        time="$(( $start - $(date +%s) ))"
        printf '%s\r' "$(date -u -d "@$time" +%H:%M:%S)"
        sleep 0.1
    done
}

stopwatch() {
    start=$(date +%s)
    while true; do
        time="$(( $(date +%s) - $start))"
        printf '%s\r' "$(date -u -d "@$time" +%H:%M:%S)"
        sleep 0.1
    done
}

# 💅
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

# *vim* keybinds
bindkey -v

# restore history search 
bindkey ^R history-incremental-search-backward 
bindkey ^S history-incremental-search-forward

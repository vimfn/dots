# pnpm
export PNPM_HOME="/home/ag/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
# fnm
export PATH="/home/ag/.fnm:$PATH"
eval "`fnm env`"

# there is another zshrc in ~/.config, better organized 

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

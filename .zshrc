export GH_TOKEN=""
export ZSH="$HOME/.oh-my-zsh"

. "$HOME/.cargo/env"

ZSH_THEME="lambda"
plugins=(git)
source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"

alias l="eza -hlai --icons always"
alias ll="eza -T --level 1 --icons always"
alias k="hx"
alias rmf="rm -rf"
alias open="xdg-open"
alias cd="z"
alias gps="git add . && git commit -m \"autopush\" && git push"
alias r="yazi"
alias ff="fastfetch --logo-padding-top 3 --logo-padding 3"
alias py="python3"
alias pf="pfetch"
alias tk="tmux kill-server"

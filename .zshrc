export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"
. "$HOME/.cargo/env" 
plugins=(git)
alias l="eza -hlai"
alias k="helix"
alias nn="nvim"
alias rmf="rm -rf"
alias open="xdg-open"
alias cd="z"

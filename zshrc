export ZSH="$HOME/.oh-my-zsh"

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias nn="nvim"
alias py="python3"
alias ll="ls -la"
alias ff="fd --type f --hidden | fzf-tmux --reverse | xargs nvim"

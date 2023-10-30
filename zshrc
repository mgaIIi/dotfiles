fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

export ZSH="$HOME/.oh-my-zsh"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias bb="cd .."
alias ll="ls -la"
alias aulaweb="open https://2023.aulaweb.unige.it/"
alias nn="nvim ."
alias github="open https://github.com/"
alias firefox="open /Applications/Firefox.app"
alias search="fzf"
alias lg="lazygit"
export PATH="/usr/local/bin:$PATH"

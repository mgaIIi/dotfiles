export ZSH="$HOME/.oh-my-zsh"

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

plugins=(git)

source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"


alias nn="nvim"
alias py="python3"
alias brave="open /Applications/Brave\ Browser.app/"
alias ghidra="sh /opt/homebrew/Caskroom/ghidra/10.4-20230928/ghidra_10.4_PUBLIC/ghidraRun"
alias ll="ls -la"

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/Users/milogalli/.detaspace/bin:$PATH"

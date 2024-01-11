export ZSH="$HOME/.oh-my-zsh"
export BAT_THEME="Catppuccin-mocha"

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

plugins=(git)

source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"

diffme ()
{
  diff -u "$1" "$2" | diff-so-fancy
}

alias envc="virtualenv env"
alias enva="source env/bin/activate"
alias rmf="rm -rf"
alias gal="git add --all"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias y="yazi"
alias diffs=diffme
alias nn="nvim"
alias py="python3"
alias ll="ls -la"
alias ff="fd --type f --hidden --exclude .git | fzf-tmux --reverse | xargs nvim"
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/Users/milogalli/.detaspace/bin:$PATH"

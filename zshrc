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

alias diffs=diffme
alias nn="nvim"
alias py="python3"
alias ghidra="sh /opt/homebrew/Caskroom/ghidra/10.4-20230928/ghidra_10.4_PUBLIC/ghidraRun"
alias ll="ls -la"
alias startsp="brew services start spotifyd"
alias stopsp="brew services stop spotifyd"
alias ff="fd --type f --hidden --exclude .git | fzf-tmux --reverse | xargs nvim"

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/Users/milogalli/.detaspace/bin:$PATH"


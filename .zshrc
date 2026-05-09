# ── Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# ── Plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ── Exports
export DEV="$HOME/Dev"
export CP="$HOME/Dev/Sonny-Competitive-programming"

# ── Navigation
alias dev="cd $DEV"
alias cdcp="cd $CP"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

# ── Git
alias g="git"
alias gs="git status -sb"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit -m"
alias gca="git commit --amend --no-edit"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gl="git pull"
alias glo="git log --oneline --graph --decorate -15"
alias gd="git diff"
alias gds="git diff --staged"
alias gb="git branch"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gst="git stash"
alias gstp="git stash pop"

# ── C++ / CP
# compile with standard CP flags
alias cpc="g++ -std=c++17 -O2 -Wall -Wextra -o sol sol.cpp"
# compile + run immediately
alias cpr="g++ -std=c++17 -O2 -o sol sol.cpp && ./sol"
# compile with ASAN + UBSan (debug)
alias cpd="g++ -std=c++17 -g -fsanitize=address,undefined -o sol sol.cpp"
# run with input/output files
alias cpio="./sol < in.txt > out.txt"

# compile any file: e.g. cpf main.cpp
cpf() { g++ -std=c++17 -O2 -Wall -o "${1%.cpp}" "$1"; }

# ── Go
alias gor="go run ."
alias gob="go build ./..."
alias got="go test ./..."
alias gotv="go test -v ./..."
alias gotidy="go mod tidy"

# ── Python
alias py="python3"
alias pip="pip3"
alias venv="python3 -m venv .venv && source .venv/bin/activate"
alias activate="source .venv/bin/activate"
alias jl="jupyter lab"

# ── Filesystem & utils
alias ls="ls -G"
alias ll="ls -lAh"
alias lt="ls -lAht"
alias mkdir="mkdir -p"
alias rf="rm -rf"
alias df="df -h"
alias dud="du -d 1 -h"
alias path="echo $PATH | tr ':' '\n'"
alias reload="source ~/.zshrc"
alias zshrc="nvim ~/.zshrc"

# ── Network & process
alias ports="lsof -i -P -n | grep LISTEN"
alias myip="curl -s ifconfig.me"
alias psg="ps aux | grep"
alias k9="kill -9"

# ── Bun
[ -s "/Users/sonnie/.bun/_bun" ] && source "/Users/sonnie/.bun/_bun"


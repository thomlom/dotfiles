export ZSH="/Users/thomas/.oh-my-zsh"

# use git plugin
plugins=(git)

# skip verification of insecure directories
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# use hub for git
alias git=hub

## npm aliases
alias ni="npm install"
alias nrs="npm run start -s --"
alias nrb="npm run build -s --"
alias nrd="npm run dev -s --"
alias nrt="npm run test -s --"

## yarn aliases
alias ya="yarn"
alias yaa="yarn add"
alias yar="yarn remove"
alias yad="yarn run dev"
alias yas="yarn run start"
alias yab="yarn run build"
alias yat="yarn run test"
alias yaga="yarn global add"
alias yagr="yarn global remove"
alias yarn-update="yarn upgrade-interactive --latest"

alias flush="rm -rf node_modules"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# custom aliases
alias de="cd ~/Desktop"
alias dl="cd ~/Downloads"
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Update brew
alias brew-update='brew update; brew upgrade; brew cleanup';

# For brew, at least
export PATH=/usr/local/bin:$PATH

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Spaceship options
SPACESHIP_AWS_SHOW=false
SPACESHIP_KUBECTL_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false
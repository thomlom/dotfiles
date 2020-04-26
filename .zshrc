export ZSH="/Users/thomaspersonnel/.oh-my-zsh"

# use default theme
ZSH_THEME=robbyrussell

# use git plugin
plugins=(git)

# skip verification of insecure directories
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# default alias for nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

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

# Copy the ZSH config to dotfiles
alias copy-zsh='cp ~/.zshrc ~/Desktop/dotfiles/.zshrc; cd ~/Desktop/dotfiles && git add .zshrc && git commit -m "Update ZSH" && git push'
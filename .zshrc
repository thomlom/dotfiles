export ZSH="/Users/thomas/.oh-my-zsh"

# use git plugin
plugins=(git thefuck osx z yarn)

# skip verification of insecure directories
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

## npm aliases
alias ni="npm install"
alias nrs="npm run start -s --"
alias nrb="npm run build -s --"
alias nrd="npm run dev -s --"
alias nrt="npm run test -s --"

# custom aliases
alias de="cd ~/Desktop"
alias dl="cd ~/Downloads"

# update brew
alias brew-update='brew update; brew upgrade; brew cleanup';

# for brew, at least
export PATH=/usr/local/bin:$PATH

# set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# spaceship options
SPACESHIP_AWS_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_DIR_TRUNC_REPO=false

# enable ZSH syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# enable ZSH autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

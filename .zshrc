#Path to your oh-my-zsh installation.
export ZSH=/Users/wahrons/.oh-my-zsh

ZSH_THEME="pygmalion"

plugins=(git zsh-syntax-highlighting)

# Vim Mode ON
bindkey -v

# User configuration

source $ZSH/oh-my-zsh.sh

source ~/.bash_profile

source ~/.alias

source ~/.functions

autoload -U colors && colors


export NVM_DIR="/Users/wahrons/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# added by travis gem
[ -f /Users/wahrons/.travis/travis.sh ] && source /Users/wahrons/.travis/travis.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_THEME=pygmalion

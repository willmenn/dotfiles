#Path to your oh-my-zsh installation.
export ZSH=/Users/wahrons/.oh-my-zsh

ZSH_THEME="pygmalion"

plugins=(git)

# Vim Mode ON
bindkey -v

# User configuration

source $ZSH/oh-my-zsh.sh

source ~/.bash_profile

source ~/.alias

source ~/.functions


export NVM_DIR="/Users/wahrons/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

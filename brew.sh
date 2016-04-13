
#Update brew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew  cask update

# Installing commum softwares 
brew cask install iterm2
brew cask install google-chrome-canary
brew cask install 1password
brew cask install vlc
brew cask install slack

# Installing commum cli tools
brew install git
brew install tree
brew install node
brew install zsh
brew install figlet
sudo brew cask install postgres

# Installing Docker and Dependences
sudo brew cask install virtualbox #Executing as sudo

brew link --overwrite docker 
brew install docker

brew install boot2docker

brew cask install java7
brew install jenv

brew cleanup






#Update brew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew  cask update

# Installing commum softwares 
brew cask install iterm2
brew cask install google-chrome-canary
brew cask install 1password

# Installing commum cli tools
brew install git
brew install tree
brew install node
brew install zsh
brew install figlet

# Installing Docker and Dependences
sudo brew cask install virtualbox #Executing as sudo

brew link --overwrite docker 
brew install docker

brew install boot2docker

brew cleanup





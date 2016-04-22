

sh  -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Creating folders for backup,sawp and viminfo

mkdir .vim/files
mkdir .vim/files/backup
mkdir .vim/files/swap
mkdir .vim/files/info

mkdir ~/Documents/Desenvolvimento
mkdir ~/Documents/Desenvolvimento/Workspace

#Setting Maven
mkdir ~/Documents/Desenvolvimento/Maven
mkdir ~/Documents/Desenvolvimento/Maven/3.3.9
if [ ! -f ~/Documents/Desenvolvimento/Maven/maven.zip ]; then

curl -o ~/Documents/Desenvolvimento/Maven/maven.zip http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip

unzip ~/Documents/Desenvolvimento/maven/maven.zip -d ~/Documents/Desenvolvimento/Maven/3.3.9

fi


#Creating symbolic link for config files

ln -sf $(pwd)/.gitconfig ~/.gitconfig

ln -sf $(pwd)/.zshrc  ~/.zshrc

ln -sf $(pwd)/.vimrc ~/.vimrc

ln -sf $(pwd)/.vim  ~/.vim

ln -sf $(pwd)/.bash_profile ~/.bash_profile

ln -sf $(pwd)/.alias ~/.alias

vim +PlugInstall +PlugClean +qall




sh  -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Creating folders for backup,sawp and viminfo

mkdir .vim/files
mkdir .vim/files/backup
mkdir .vim/files/swap
mkdir .vim/files/info

mkdir ~/Documents/Desenvolvimento
mkdir ~/Documents/Desenvolvimento/Workspace

#Setting Maven
mkdir -p ~/Documents/Desenvolvimento/Maven/3.3.9
if [ ! -f ~/Documents/Desenvolvimento/Maven/maven.zip ]; then

curl -o ~/Documents/Desenvolvimento/Maven/maven.zip http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip

unzip ~/Documents/Desenvolvimento/Maven/maven.zip -d ~/Documents/Desenvolvimento/Maven/3.3.9

fi

#Setting Tomcat
mkdir -p ~/Documents/Desenvolvimento/Tomcat/7.0.69
if [ ! -f ~/Documents/Desenvolvimento/Tomcat/tomcat.zip ]; then

curl -o ~/Documents/Desenvolvimento/Tomcat/tomcat.zip	http://ftp.unicamp.br/pub/apache/tomcat/tomcat-7/v7.0.69/bin/apache-tomcat-7.0.69.zip

unzip ~/Documents/Desenvolvimento/Tomcat/tomcat.zip -d ~/Documents/Desenvolvimento/Tomcat/7.0.69

chmod +x ~/Documents/Desenvolvimento/Tomcat/7.0.69/apache-tomcat-7.0.69/bin/catalina.sh

fi

#Creating symbolic link for config files

ln -sf $(pwd)/.gitconfig ~/.gitconfig

ln -sf $(pwd)/.zshrc  ~/.zshrc

ln -sf $(pwd)/.vimrc ~/.vimrc

ln -sf $(pwd)/.vim  ~/.vim

ln -sf $(pwd)/.bash_profile ~/.bash_profile

ln -sf $(pwd)/.alias ~/.alias

vim +PlugInstall +PlugClean +qall


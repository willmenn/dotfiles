

sh  -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Creating folders for backup,sawp and viminfo

mkdir .vim/files
mkdir .vim/files/backup
mkdir .vim/files/swap
mkdir .vim/files/info

DEVFOLDER=~/Documents/Desenvolvimento

mkdir $DEVFOLDER
mkdir $DEVFOLDER/Workspace

#Setting Maven
MAVENFOLDER=$DEVFOLDER/Maven
mkdir -p $MAVENFOLDER/3.3.9
if [ ! -f $MAVENFOLDER/maven.zip ]; then

curl -o $MAVENFOLDER/maven.zip http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip

unzip $MAVENFOLDER/maven.zip -d $MAVENFOLDER/3.3.9

fi

#Setting Tomcat
TOMCATFOLDER=$DEVFOLDER/Tomcat
mkdir -p $TOMCATFOLDER/7.0.69
if [ ! -f $TOMCATFOLDER/tomcat.zip ]; then

curl -o $TOMCATFOLDER/tomcat.zip	http://ftp.unicamp.br/pub/apache/tomcat/tomcat-7/v7.0.69/bin/apache-tomcat-7.0.69.zip

unzip $TOMCATFOLDER/tomcat.zip -d $TOMCATFOLDER/7.0.69

chmod +x $TOMCATFOLDER/7.0.69/apache-tomcat-7.0.69/bin/catalina.sh

fi

#Setting Ant Apache
ANTFOLDER=$DEVFOLDER/AntApache
mkdir -p $ANTFOLDER/1.9.7
if [ ! -f $ANTFOLDER/ant.zip ]; then
	curl -o $ANTFOLDER/ant.zip http://mirror.nbtelecom.com.br/apache//ant/binaries/apache-ant-1.9.7-bin.zip

	unzip $ANTFOLDER/ant.zip -d $ANTFOLDER/1.9.7
fi

#Setting guava plugin for IntelliJ
PLUGINFOLDER=$DEVFOLDER/Plugin
mkdir -p $PLUGINFOLDER
if [ ! -d $PLUGINFOLDER/guavagenerators ]; then

	git clone https://github.com/willmenn/guavagenerators.git $PLUGINFOLDER

fi
#Setting up ChromeDriver
CHROMEDRIVER=$DEVFOLDER/chromeDriver
mkdir -p $CHROMEDRIVER
if [ ! -f $CHROMEDRIVER/chromedriver ]; then

curl -o  $CHROMEDRIVER/chromeDriver.zip   http://chromedriver.storage.googleapis.com/2.21/chromedriver_mac32.zip 

unzip $CHROMEDRIVER/chromeDriver.zip -d $CHROMEDRIVER

fi

#Setting git standup
curl -L	https://raw.githubusercontent.com/kamranahmedse/git-standup/master/installer.sh  | sudo sh

#Creating symbolic link for config files


ln -sf $(pwd)/.gitconfig ~/.gitconfig

ln -sf $(pwd)/.zshrc  ~/.zshrc

ln -sf $(pwd)/.vimrc ~/.vimrc

ln -sf $(pwd)/.ideiavimrc ~/.ideiavimrc

ln -sf $(pwd)/.vim  ~/.vim

ln -sf $(pwd)/.bash_profile ~/.bash_profile

ln -sf $(pwd)/.alias ~/.alias

vim +PlugInstall +PlugClean +qall


source colors.sh
BANNER=$(cat banner)

printf "${BLUE}${BANNER}${NC}\n"

sh  -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Creating folders for backup,sawp and viminfo

function createFolders {

	if [ ! -d $1 ];  then
	     mkdir -p $1
	     printf "${ORANGE}$1 folder created${NC}\n"
	else
	     printf "${RED}$1 folder could not be created because it already exists!${NC}\n"
	fi
	
}

createFolders .vim/files
createFolders .vim/files/backup
createFolders .vim/files/swap
createFolder .vim/files/info
DEVFOLDER=~/Documents/Desenvolvimento
createFolders $DEVFOLDER/Workspace
function downloadDependences {
# $1 = zip $2 = url $3 = folder $4 = name
if [ ! -f $1 ]; then 
	mkdir -p $3

	simpleDownload $1 $2 $4
	
	unzip -qq $1 -d $3

	printf "${GREEN}$4 successful instaled!!!\n${NC}"
else
	printf "${RED}Could not download dependence $4${NC}\n"
fi

}

function simpleDownload {

	curl -so $1 $2

	printf "${YELLOW} $3 downloaded${NC}\n"

}



#Setting Maven
MAVENFOLDER=$DEVFOLDER/Maven
#mkdir -p $MAVENFOLDER/3.3.9
MAVENURL=http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip
MAVENFOLDER_BIN=$MAVENFOLDER/3.3.9
MAVENZIP=$MAVENFOLDER/maven.zip
downloadDependences $MAVENZIP $MAVENURL $MAVENFOLDER_BIN Maven

TOMCATFOLDER=$DEVFOLDER/Tomcat
TOMCATZIP=$TOMCATFOLDER/tomcat.zip
TOMCATURL=http://ftp.unicamp.br/pub/apache/tomcat/tomcat-7/v7.0.69/bin/apache-tomcat-7.0.69.zip
TOMCAT_BIN=$TOMCATFOLDER/7.0.69
downloadDependences $TOMCATZIP $TOMCATURL $TOMCAT_BIN Tomcat
#chmod +x $TOMCATFOLDER/7.0.69/apache-tomcat-7.0.69/bin/catalina.sh


#Setting Ant Apache
ANTFOLDER=$DEVFOLDER/AntApache
ANTFOLDER_BIN=$ANTFOLDER/1.9.7
ANTURL=http://mirror.nbtelecom.com.br/apache//ant/binaries/apache-ant-1.9.7-bin.zip
ANTZIP=$ANTFOLDER/ant.zip
downloadDependences $ANTZIP $ANTURL $ANTFOLDER_BIN Ant_Apache

#Setting up ChromeDriver
CHROMEDRIVER=$DEVFOLDER/chromeDriver
CHROMEDRIVER_URL=http://chromedriver.storage.googleapis.com/2.21/chromedriver_mac32.zip
CHROMEDRIVER_ZIP=$CHROMEDRIVER/chromeDriver.zip
CHROMEDRIVER_FILE=$CHROMEDRIVER/chromedriver
downloadDependences $CHROMEDRIVER_ZIP $CHROMEDRIVER_URL $CHROMEDRIVER ChromeDriver



#Setting git standup
curl -s https://raw.githubusercontent.com/kamranahmedse/git-standup/master/installer.sh  | sudo sh

printf "${GREEN} git-standup successful installed${NC}\n"

#Creating symbolic link for config files


ln -sf $(pwd)/.gitconfig ~/.gitconfig

ln -sf $(pwd)/.zshrc  ~/.zshrc

ln -sf $(pwd)/.vimrc ~/.vimrc

ln -sf $(pwd)/.ideavimrc ~/.ideavimrc

if [ -d ~/.vim ]; then
	rm -r ~/.vim
fi

ln -sf $(pwd)/.vim  ~/.vim

ln -sf $(pwd)/.bash_profile ~/.bash_profile

ln -sf $(pwd)/.alias ~/.alias

ln -sf $(pwd)/.functions ~/.functions

vim +PlugInstall +PlugClean +qall


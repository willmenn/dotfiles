
#Setting Java Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home

#Setting Maven
export M2_HOME=/Users/wahrons/Documents/Desenvolvimento/Maven/3.3.9/apache-maven-3.3.9

#Setting ANT
export ANT_HOME=/Users/wahrons/Documents/Desenvolvimento/Ant/1.9.6/apache-ant-1.9.6

#Setting Gradle
export GRADLE_HOME=/Users/wahrons/Documents/Desenvolvimento/Gradle/2.10/gradle-2.10

#Setting Catalina para tomcat
export CATALINA_HOME=/Users/wahrons/Documents/Desenvolvimento/Tomcat/7.0.67/apache-tomcat-7.0.67

#Setting Postgres
export POSTGRES_HOME=/Applications/Postgres.app/Contents/Versions/9.5

#Setting PATH
export PATH=${PATH}:${JAVA_HOME}/bin:${M2_HOME}/bin:${ANT_HOME}/bin:${GRADLE_HOME}/bin:${CATALINA_HOME}/bin:${POSTGRES_HOME}/bin

#Setting Alias

#Setting catalina Alias
alias catalina=$CATALINA_HOME/bin/catalina.sh

#Setting Desenvolvimento Alias
alias dev='cd /Users/wahrons/Documents/Desenvolvimento'

#Setting Maven Alias
alias maven='cd /Users/wahrons/Documents/Desenvolvimento/Maven'

#Setting Workspace Alias
alias workspace='cd /Users/wahrons/Documents/Desenvolvimento/Workspaces'

#Setting Workspace TWU Alias
alias workspaceTWU='cd /Users/wahrons/Documents/Desenvolvimento/Workspaces/ThoughtWorks/TWU/Prep/Welcome/workspace'

source ~/.alias

#!/bin/bash
cd ~
echo "Downloading the jboss-as-7.1.."
wget http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz  

echo "Unziping  wildfly-10.1.0.Final/the zip.."
unzip jboss-as-7.1.1.Final.zip

#rm jboss-as-7.1.1.Final.zip`
# wget https://raw.githubusercontent.com/ishaq4466/wildflyOnPi/master/bashprofile/bashprofileForWildFly.txt
# cat bashprofileForWildFly.txt >> ~/.bash_profile
wget https://raw.githubusercontent.com/ishaq4466/wildflyOnPi/master/bashprofile/bashForJBOSS7.1.txt
cat  bashForJBOSS7.1.txt >> ~/.bash_profile		
cd ~/jboss-as-7.1.1.Final/


mkdir -p /usr/java/
cd /usr/java/
wget https://googledrive.com/host/LARGEPUBLICFOLDERID/index4phlat.tar.gz
uzip jdk1.7_ora.zip

echo "Pulling the standalone.xml"
cd
cd $JBOSS_HOME/standalone/configuration/
echo "taking bakup of standalone.xml"
mv standalone.xml standalone_bak.xml
wget https://gist.githubusercontent.com/ishaq4466/11bc162193f31b6c62634da0a3f5b3aa/raw/cdd684f7075b369ee3012e36c428a3ef7a7a0d19/standalone.xml_ver1.0
mv standalone.xml_ver1.* standalone.xml

echo "Finally booting the jboss.."
cd $JBOSS_HOME/bin
echo "Starting the jboss"
./standalone.sh &
cd

`

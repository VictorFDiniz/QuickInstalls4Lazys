#!/bin/bash

apt-get update && apt-get upgrade -y
apt-get -y install build-essential default-jre

wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.1.jar

mv apktool_2.6.1.jar apktool.jar

wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool

chmod +x apktool apktool.jar

mv apktool apktool.jar /bin
echo ""
echo "Done"

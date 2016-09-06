#!/bin/bash
ln -sf /usr/bin/node /usr/local/bin/node
ln -sf /usr/bin/npm /usr/local/bin/npm
mkdir /opt
cd /opt
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
rm -Rf master.zip
cd lolcat-master/
gem install lolcat
clear
sleep 0.1
cd ~/
mkdir ~/ogar/
cd ~/ogar/
git clone https://github.com/AJS-development/Ogar-unlimited.git
clear
sleep 0.5
cd ~/ogar/Ogar-unlimited/src
npm install | lolcat -a -s 100
sleep 5
clear
echo "Ogar Dir = ~/ogar/Ogar-unlimited" | lolcat -a -s 100

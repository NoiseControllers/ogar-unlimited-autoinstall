#!/bin/bash
apt-get install ruby -y
cd /opt
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
rm -Rf master.zip
cd lolcat-master/
gem install lolcat
clear
sleep 0.3
cd ~/
mkdir ~/ogar/
cd ~/ogar/
git clone https://github.com/AJS-development/Ogar-unlimited.git
cd Ogar-unlimited/src/
clear
sleep 0.3
npm install | lolcat -a -s 100
clear

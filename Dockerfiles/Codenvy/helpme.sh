#!/bin/bash
sudo apt-get install ruby -y
cd /opt
sudo wget https://github.com/busyloop/lolcat/archive/master.zip
sudo unzip master.zip
sudo rm -Rf master.zip
cd lolcat-master/
sudo gem install lolcat
sudo npm cache clean -f | lolcat -a -s 100
sudo npm install -g n | lolcat -a -s 100
sudo n 5.9.0 | lolcat -a -s 100
sudo ln -sf /usr/local/n/versions/node/5.9.0/bin/node /usr/bin/node | lolcat -a -s 100
sudo npm config set prefix /usr/local | lolcat -a -s 100
clear
sleep 0.3
cd ~/
sudo mkdir ~/ogar/
cd ~/ogar/
sudo git clone https://github.com/AJS-development/Ogar-unlimited.git
cd Ogar-unlimited/src/
clear
sleep 0.3
npm install | lolcat -a -s 100


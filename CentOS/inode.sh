#!/bin/bash
# ******************************************
# Script : Ogar-Unlimited-Autoinstaller.
# Author : RAW A.K.A Jasht'sSerie
# ******************************************

#Start.
echo -n "Updating System..."; yum -y update > /dev/null; echo "Done.";
echo -n "Upgrading System..."; yum -y upgrade > /dev/null; echo "Done.";
echo -n "Installing Packs..."; yum -y install git libssl-dev openssl nano wget curl > /dev/null; echo "Done.";
echo -n "Installing Packs..."; yum -y install build-essential > /dev/null; echo "Done.";
cd ~/
echo -n "Downloading Node..."; wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz > /dev/null; echo "Done.";
echo -n "Untar & install..."; tar --strip-components 1 -xzvf node-v* -C /usr/local > /dev/null; echo "Done.";

sleep 2
echo "***************************"
echo "Node V `node -v`"
echo "Npm V `npm -v`"
echo "We Need To Update Nodejs~"
echo "**************************"
sleep 5
echo -n "Clear Cache..."; npm cache clean -f  > /dev/null; echo "Done.";
echo -n "Get Node..."; npm install -g n  > /dev/null; echo "Done.";
echo -n "Install Node..."; n 5.9.0  > /dev/null; echo "Done.";
echo -n "Creating A Symlink..."; sudo ln -sf /usr/local/n/versions/node/5.9.0/bin/node /usr/bin/node > /dev/null; echo "Done.";
rm -Rf ~/node-v0.10.30-linux-x64.tar.gz
sleep 5
echo "~/////////////////////////~"
echo "***************************"
echo "Node V `node -v`"
echo "Npm V `npm -v`"
echo "We Need To Play Ogar xD"
echo "**************************"
echo "~////////////////////////~"
sleep 2
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Now Start To Create Your Server With Command ./create.sh gamefolder 81 82"
echo "~~~~~~~~~~~-.-~~~~~~~~~~~~"
sleep 1

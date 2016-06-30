#!/bin/bash
# ******************************************
# Script : Ogar-Unlimited-Autoinstaller.
# Author : RAW A.K.A Jasht'sSerie
# ******************************************

#Start.
echo -n "Updating System..."; apt-get update -y  > /dev/null; echo "Done.";
echo -n "Upgrading System..."; apt-get upgrade -y  > /dev/null; echo "Done.";
echo -n "Installing Packs..."; apt-get install git libssl-dev openssl nano wget curl -y > /dev/null; echo "Done.";
echo -n "Installing Packs..."; apt-get install dnsutils build-essential -y  > /dev/null; echo "Done.";
echo -n "Getting Node Source..."; curl -sL https://deb.nodesource.com/setup | sudo bash -  > /dev/null; echo "Done.";
echo -n "Installing Node..."; apt-get install nodejs -y > /dev/null; echo "Done.";
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
echo "To Start With Ogar Installation Execute ./create.sh gamefolder 449 89"
echo "~~~~~~~~~~~-.-~~~~~~~~~~~~"
sleep 1










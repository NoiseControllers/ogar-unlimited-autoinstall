#!/bin/bash
#start.
ip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo -n "Updating System..."; apt-get update -y  > /dev/null; echo "Done.";
echo -n "Upgrading System..."; apt-get upgrade -y  > /dev/null; echo "Done.";
echo -n "Installing Apache2..."; apt-get install apache2 -y > /dev/null; echo "Done.";
echo -n "Wait................."; sleep 2 > /dev/null; echo "OK.";
echo -n "Installing Php5..."; apt-get install php5 -y > /dev/null; echo "Done.";
echo -n "Restarting Apache2..."; service apache2 restart > /dev/null; echo "Done.";
echo "Installing Php Packages..."
apt-get install git -y
apt-get install -y libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-ming php5-ps
apt-get install -y php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
apt-get install zip unzip -y
sudo service apache2 restart
sudo php5enmod mcrypt
service apache2 restart
echo "Done."
sleep 1
echo "Please Open ${ip} On WebBrowser"
echo "To Install Client Use ./client.sh mydomain.ltd "
#End.

#!/bin/bash
#Dir's.
confdir="/etc/apache2/sites-available"
vhostdir="/var/www"
skeleton="/opt/skeletonhost"

die () { 
echo >&2 "$@"
 exit 1 
} 

# Check if we have an argument, Die If Not.!
[ "$#" -eq 1 ] || die "We Can't Start Without A Domain Name Please Use ./client.sh domainname.com" 

# Create folder for domain 
mkdir $vhostdir/$1
chmod 775 $vhostdir/$1
mkdir $vhostdir/$1/public_html
chmod 775 $vhostdir/$1/public_html

# Creating Conf File.
cat <<EOF > /etc/apache2/sites-available/$1.conf
<VirtualHost *:80>
   ServerAdmin webmaster@$1
   ServerName $1
   ServerAlias www.$1
   DocumentRoot /var/www/$1/public_html
   ErrorLog ${APACHE_LOG_DIR}/error.log
   CustomLog ${APACHE_LOG_DIR}/access.log combined
   <Directory $vhostdir/$1>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
   </Directory>
</virtualhost>
EOF

#Getting Ogar-Client From Github.
cd /$vhostdir/$1/public_html
echo -n "Downloading Ogar-Client"; wget https://github.com/AJS-development/Ogar-unlimited/files/307871/Agarioclient.zip > /dev/null; echo "Done.";

unzip Agarioclient.zip
mv Agarioclient/* ./
rm -Rf Agarioclient.zip
rm -Rf Agarioclient
chown -R www-data:www-date *

#Enable & Reload.
sudo a2ensite $1.conf
service apache2 restart

# Work Done.
echo "~////////////////////////////////////////////////////////~"
echo "~////////////////////////////////////////////////////////~"
echo "~--------------------------------------------------------~"
echo "Domain creation of $1 is complete."
echo "You can Visit $1 To Check If Is All Working Good."
echo "You can place/edit your files in $vhostdir/$1/public_html"
echo "~--------------------------------------------------------~"
echo "~////////////////////////////////////////////////////////~"
echo "~////////////////////////////////////////////////////////~"

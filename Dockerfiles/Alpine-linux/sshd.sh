#!/bin/bash
ssh-keygen -t rsa1 -f /etc/ssh/ssh_host_key -N ""
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ""
ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ""
rm -Rf /etc/motd
wget https://raw.githubusercontent.com/NoiseControllers/ogar-unlimited-autoinstall/master/Dockerfiles/Alpine-linux/motd
mv motd /etc/motd

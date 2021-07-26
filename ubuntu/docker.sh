#!/bin/bash

#Prerequisites and add repository
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update

#Install
apt install docker-ce

#Add user to docker group
#Not required
usermod -aG docker ${USER}
source ~/.bashrc
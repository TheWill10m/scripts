#!/bin/bash

#Prerequisites and add repository
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update

#Install
apt install -y docker-ce

#Add user to docker group
#Not required
USERNAME=will
groupadd docker
usermod -aG docker ${USERNAME}
echo "You will now have to log out of ${USERNAME} and log back in."
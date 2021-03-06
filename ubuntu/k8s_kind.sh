#!/bin/bash

#Installs Kind to run kubectl on docker

#install kubectl
sudo snap install kubectl --classic

#add alias for kubectl
#not required
USERNAME=will
echo alias k="kubectl" >> /home/${USERNAME}/.bashrc
echo "You will now have to log out of ${USERNAME} and log back in."


#install kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
#add to path
mv ./kind /usr/local/bin/kind


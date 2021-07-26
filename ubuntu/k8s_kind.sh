#!/bin/bash

#Installs Kind to run kubectl on docker

#install kubectl
sudo snap install kubectl --classic

#add alias for kubectl
#not required
username=will
echo alias k="kubectl" >> /home/${USERNAME}/.bashrc


#install kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
#add to path
mv ./kind /usr/loca/bin/kind


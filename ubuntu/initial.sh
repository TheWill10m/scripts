#!/bin/bash

#update
apt update
apt full-upgrade -y

#enable firewall with ssh allowed
ufw allow ssh
ufw --force enable

#install basic programs
apt install snap net-tools -y
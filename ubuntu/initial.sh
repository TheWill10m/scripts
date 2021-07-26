#!/bin/bash

#update
apt update
apt full-upgrade

#enable firewall with ssh allowed
ufw allow ssh
ufw enable

#install basic programs
apt install snap net-tools
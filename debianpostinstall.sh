#!/bin/bash

# lista de programas
# debian server 11
# ssh server
# utilidades del sistema


# openmediavault
# docker



#actualizar el sistema
sudo apt-get update -y & sudo apt-get upgrade -y
# samba & sudo
sudo apt-get install samba sudo


#Openmediavault
#https://sysaix.com/how-to-install-openmediavault-on-debian-10
 
 
sudo apt update
sudo apt upgrade
wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash
sudo reboot

# docker install
sudo apt update
sudo apt install -y --no-install-recommends apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install -y --no-install-recommends docker-ce docker-compose

# Install mimimal programs for my server
sudo apt-get install -y --no-install-recommends samba openssh
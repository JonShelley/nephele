#!/bin/bash

# Prep for install
sudo apt-get update
sudo apt install build-essential -y

# Install enroot
sudo chmod 1777 /mnt
cd /mnt
curl -fSsL -O https://github.com/NVIDIA/enroot/releases/download/v3.2.0/enroot_3.2.0-1_amd64.deb
curl -fSsL -O https://github.com/NVIDIA/enroot/releases/download/v3.2.0/enroot+caps_3.2.0-1_amd64.deb
sudo apt install -y ./*.deb

# Install Terraform
sudo "curl -fSsL https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip | zcat > /usr/local/bin/terraform"
sudo chmod +x /usr/local/bin/terraform

# Install ansible
sudo apt install -y python3-pip
sudo pip3 install --upgrade ansible

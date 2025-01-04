#!/bin/bash
# Created by: Muller Matos
# Website: www.mullertec.com.br
# Creation: jan-2025
# Tested for Linux Mint 21.3 (Jammy)

# Update and upgrade the system packages
sudo apt update && sudo apt upgrade -y

# Install git
sudo apt install git -y

# Configure git with your user information
git config --global user.name "Muller Matos"
git config --global user.email "millerjmatos@hotmail.com"

# Clone the bootstrap repository to the home directory
git clone https://github.com/millerjmatos/bootstrap.git ~/ansible-setup

# Install ansible
sudo apt install ansible -y

# Navigate to the cloned repository directory and run the ansible playbook
cd ~/ansible-setup
ansible-playbook mystation.yml --ask-become-pass

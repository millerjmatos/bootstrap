#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install git -y

# Configura o Git (substitua pelos seus dados):
git config --global user.name "Muller Matos"
git config --global user.email "millerjmatos@hotmail.com"

git clone https://github.com/millerjmatos/bootstrap.git ~/ansible-setup

sudo apt install ansible -y

# Executa o playbook:
cd ~/ansible-setup
ansible-playbook mystation.yml --ask-become-pass

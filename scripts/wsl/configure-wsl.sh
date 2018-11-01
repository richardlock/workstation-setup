#!/bin/bash

# Enable passwordless sudo for default user
echo "$(whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(whoami)

# Update package lists
echo 'Updating package lists...'
sudo apt update -y

# Install zsh
echo 'Installing zsh...'
sudo apt install zsh -f -y

# Set umask to prevent cloned repositories from having insecure permissions
umask g-w,o-w

# Install oh-my-zsh
echo 'Installing oh-my-zsh...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"

# Download zsh-autosuggestions plugin
echo 'Installing zsh-autosuggestions plugin...'
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install dotfiles
git clone -b wsl https://github.com/richardlock/dotfiles.git ~/.dotfiles && ~/.dotfiles/install

# Make ~/.ssh directory
mkdir -m 700 ~/.ssh

# Copy wsl.conf to /etc
sudo cp ~/.dotfiles/wsl/wsl.conf /etc/wsl.conf

# Upgrade packages
echo 'Upgrading packages...'
sudo apt upgrade -y

#!/bin/bash

# Enable passwordless sudo for default user
echo "$(whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(whoami)

# Configure /etc/wsl.conf
echo "[automount]\nroot = /\noptions = \"metadata\"" | sudo tee /etc/wsl.conf

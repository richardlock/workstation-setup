#!/bin/bash

# Install ChefDK
curl -O https://packages.chef.io/files/stable/chefdk/4.5.0/ubuntu/18.04/chefdk_4.5.0-1_amd64.deb
sudo dpkg -i chefdk_4.5.0-1_amd64.deb
rm -f chefdk_4.5.0-1_amd64.deb

# Install kitchen-docker
chef gem install kitchen-docker

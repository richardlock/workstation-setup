#!/bin/bash

# Install ChefDK
curl -O https://packages.chef.io/files/stable/chefdk/3.5.13/ubuntu/18.04/chefdk_3.5.13-1_amd64.deb
sudo dpkg -i chefdk_3.5.13-1_amd64.deb
rm -f chefdk_3.5.13-1_amd64.deb

# Install kitchen-docker
chef gem install kitchen-docker

#!/bin/bash

version = 4.6.35
package = chefdk_$version-1_amd64.deb

# Install ChefDK
curl -O https://packages.chef.io/files/stable/chefdk/$version/ubuntu/18.04/$package
sudo dpkg -i $package
rm -f $package

# Install kitchen-docker
chef gem install kitchen-docker

#!/bin/bash

# Install packages
sudo DEBIAN_FRONTEND=noninteractive -H apt-get -y install \
  krb5-user \
  libkrb5-dev \
  libssl-dev \
  python3-dev \
  python3-pip

# Install virtualenv
sudo -H pip3 install virtualenv

# Create virtualenv
virtualenv -p python3 ~/virtualenv/ansible-virtualenv

# Activate virtualenv
source ~/virtualenv/ansible-virtualenv/bin/activate

# Install Ansible
sudo -H pip3 install ansible
# sudo -H pip install git+https://github.com/ansible/ansible.git@devel

# Install Ansible related packages
sudo -H pip3 install \
  'ansible[azure]' \
  docker-py \
  f5-sdk \
  infoblox-client \
  molecule \
  netaddr \
  pyvmomi \
  pywinrm \
  'pywinrm[kerberos]'

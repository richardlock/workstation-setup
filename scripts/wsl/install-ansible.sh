#!/bin/bash

# Install packages
sudo -H apt -y install \
  krb5-user \
  libkrb5-dev \
  libssl-dev \
  python-dev \
  python-pip

# Upgrade python pip
sudo -H pip install --upgrade pip

# Install Ansible
sudo pip install ansible
# sudo -H pip install git+https://github.com/ansible/ansible.git@devel

# Install Ansible related packages
sudo -H pip install \
  'ansible[azure]' \
  docker-py \
  f5-sdk \
  infoblox-client \
  molecule \
  netaddr \
  pyvmomi \
  pywinrm \
  'pywinrm[kerberos]'

# Copy ansible.cfg to /etc/ansible/ansible.cfg
sudo mkdir /etc/ansible
sudo cp ~/.dotfiles/ansible/ansible.cfg /etc/ansible/ansible.cfg

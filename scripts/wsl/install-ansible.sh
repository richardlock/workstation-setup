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
pip install ansible

# Install Ansible related packages
pip install \
  'ansible[azure]' \
  docker-py \
  f5-sdk \
  infoblox-client \
  molecule \
  netaddr \
  pyvmomi \
  pywinrm \
  'pywinrm[kerberos]'

# Install python pip
sudo -H apt -y install python-pip libssl-dev

# Upgrade python pip
sudo -H pip install --upgrade pip

# Install Ansible (devel branch) 
# sudo pip install ansible
sudo pip install git+https://github.com/ansible/ansible.git@devel

# Install Ansible related packages
sudo pip install \
  azure \ # azure
  docker-py \ # docker
  f5-sdk \ # big-ip
  molecule \ # molecule
  netaddr \ # big-ip
  pyvmomi \ # vmware
  pywinrm # windows

# Copy ansible.cfg to /etc/ansible/ansible.cfg
sudo mkdir /etc/ansible
sudo cp ~/.dotfiles/etc/ansible/ansible.cfg /etc/ansible/ansible.cfg

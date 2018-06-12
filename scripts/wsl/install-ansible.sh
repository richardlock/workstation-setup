# Install python pip
sudo apt -y install python-pip libssl-dev

# Upgrade python pip
sudo pip install --upgrade pip

# Install Ansible (devel branch) 
# sudo pip install ansible
sudo pip install git+https://github.com/ansible/ansible.git@devel

# Install Ansible related packages
sudo pip install \
  f5-sdk \
  docker-py \
  molecule \
  netaddr \
  pyvmomi \
  pywinrm
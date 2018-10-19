# Install python pip
sudo -H apt -y install python-pip libssl-dev

# Upgrade python pip
sudo -H pip install --upgrade pip

# Install Ansible
# sudo pip install ansible
sudo pip install git+https://github.com/ansible/ansible.git@devel

# Install Ansible related packages
sudo pip install azure docker-py f5-sdk molecule netaddr pyvmomi pywinrm

# Copy ansible.cfg to /etc/ansible/ansible.cfg
sudo mkdir /etc/ansible
sudo cp ~/.dotfiles/ansible/ansible.cfg /etc/ansible/ansible.cfg

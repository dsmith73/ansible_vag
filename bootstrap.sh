#! /bin/bash
# Provisions vagrantfile

# update
  yum -y update

# GitHub - Install before Prometheus
  sudo yum install -y git

# Install wget
  sudo yum install -y wget

# Install EPEL Release
  sudo yum install -y epel-release

# Download unzip
  sudo yum install -y ansible

  # Configure Ansible  
  # Append the following to ansible/hosts  
    echo "[me]" >> /etc/ansible/hosts
    echo "alias ansible_ssh_host=localhost" >> /etc/ansible/hosts
    # Add ansible to path and link it  
      sudo export PATH="$PATH:/home/vagrant/ansible"
    # Symlink to binaries  
      cd /usr/bin
      sudo ln -s /home/vagrant/ansible ansible
    # update path for current session  
      source ~/.bashrc

  # Create the group_vars directory  
  sudo mkdir /etc/ansible/group_vars

  # create ssh key  
  # ssh-keygen
    # sharing the ssh-key  
    # 

  # using SSH keys for authentication. To set up SSH agent to avoid retyping passwords  
  ssh-agent bash
  ssh-add ~/.ssh/id_rsa





  # When setting up on MAC - This will remove the 15 open file limit  
  # sudo launchctl limit maxfiles unlimited


# Clean-up
  sudo yum clean all

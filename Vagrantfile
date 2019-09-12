# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant configuration
Vagrant.configure('2') do |config|
  config.vm.box = "generic/centos7"
  # config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = "ans"    # hostname
  config.vm.define "ans"        # Machine Name
  # Provider
  config.vm.provider :virtualbox do |vb|
      vb.name = "ans"           # Name of the virtual box
      # vb.memory = "2048"      # Amount of memory in KB
      # vb.cpu = "4"            # How many CPU cores should be applied
      vb.gui = false            # Don't display the VBox GUI when booting
  end

# Network config
config.vm.network "private_network", type: "dhcp"

#Sync Folder
# "." means current working directory
# NOTE: Linking to the /vagrant directory can overwrite the directory, destroy .ssh, and kill the box  
# https://github.com/hashicorp/vagrant/issues/10280
config.vm.synced_folder "~/ansible/", "/home/vagrant/ansible/"

# Install Applications
config.vm.provision "shell", inline: <<-SHELL
sudo yum -y update
sudo yum -y upgrade
# Install EPEL-Release to support installing Ansible
sudo yum install -y epel-release
# install Ansible  
sudo yum install -y ansible
# Install Git
sudo yum install -y git
SHELL

# Provisions
# PATH statement tells the vagrantfile where to go get the configuration
config.vm.provision "shell", path: "bootstrap.sh"

end

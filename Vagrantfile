# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant configuration
Vagrant.configure('2') do |config|
  config.vm.box = "generic/centos7"
  # config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = "ans"   # hostname
  config.vm.define "ans" # Machine Name
  # Provider
  config.vm.provider :virtualbox do |vb|
      vb.name = "ans"    # Name of the virtual box
      # vb.memory = "2048"      # Amount of memory in KB
      # vb.cpu = "4"            # How many CPU cores should be applied
      vb.gui = false            # Don't display the VBox GUI when booting
  end


# Provisions
# PATH statement tells the vagrantfile where to go get the configuration
config.vm.provision "shell", path: "bootstrap.sh"


# Network config
# config.vm.box_check_update = true
config.vm.network "forwarded_port", guest: 22, host: 22
# config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
# config.vm.network "private_network", ip: "192.168.33.10"
# config.vm.network "public_network"


#Sync Folder
# "." means current working directory
config.vm.synced_folder "~/vagrant/", "/home/vagrant/"
config.vm.synced_folder "~/ansible/", "/home/vagrant/ansible/"
# end of config for Sync

end

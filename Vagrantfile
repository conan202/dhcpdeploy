# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

#=======================================================
# Configuración general
#=======================================================
	config.vm.box = "ubuntu/focal64"	
		#config.vm.box = "ubuntu/bionic64"
		#config.vm.box = "centos/8"
    config.ssh.insert_key = false
    config.vm.provider "virtualbox" do |v|
				v.memory = 4096
				v.cpus = 2
    end
    config.vm.box_check_update = false
	
#=======================================================
# Configuración master 1
#=======================================================
    config.vm.define "master1" do |node|
		node.vm.network "private_network", ip: "192.168.50.11"
		node.vm.hostname = "master1"
		
#usar alguna llave publica personal para logearse rapido a la vm, sino la clave es vagrant/vagrant
		config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/ssh-key.pub"
		config.vm.provision "shell", inline: <<-SHELL
			cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
		SHELL
	end
# #=======================================================
# # Configuración master 2
# #=======================================================
#     config.vm.define "master2" do |node|
# 		node.vm.network "private_network", ip: "192.168.50.12"
# 		node.vm.hostname = "master2"
		
# 		config.vm.provision "file", source: "./password.pub", destination: "~/.ssh/ssh-key.pub"
# 		config.vm.provision "shell", inline: <<-SHELL
# 			cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
# 		SHELL
# 	end
# #=======================================================
# # Configuración master 3
# #=======================================================
#     config.vm.define "master3" do |node|
# 		node.vm.network "private_network", ip: "192.168.50.13"
# 		node.vm.hostname = "master3"

# 		config.vm.provision "file", source: "./password.pub", destination: "~/.ssh/ssh-key.pub"
# 		config.vm.provision "shell", inline: <<-SHELL
# 			cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
# 		SHELL
# 	end
# #=======================================================
# # Configuración node 1
# #=======================================================
# 	config.vm.define "node1" do |node|
# 		node.vm.network "private_network", ip: "192.168.50.21"
# 		node.vm.hostname = "node1"
		
# 		config.vm.provision "file", source: "./password.pub", destination: "~/.ssh/ssh-key.pub"
# 		config.vm.provision "shell", inline: <<-SHELL
# 			cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
# 		SHELL
# 	end
# #=======================================================
# # Configuración node 2
# #=======================================================
# 	config.vm.define "node2" do |node|
# 		node.vm.network "private_network", ip: "192.168.50.22"
# 		node.vm.hostname = "node2"
		
# 		config.vm.provision "file", source: "./password.pub", destination: "~/.ssh/ssh-key.pub"
# 		config.vm.provision "shell", inline: <<-SHELL
# 			cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
# 		SHELL
# 	end
end

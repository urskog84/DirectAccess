# Provisioning configuration for Ansible.


Vagrant.configure("2") do |config|
  config.vm.define "win1" do |subconfig|
    subconfig.vm.box = "StefanScherer/windows_2016"
    subconfig.vm.hostname = "win1"
    subconfig.vm.network :private_network, ip: "192.168.33.8"
    subconfig.vm.network :private_network, ip: "10.64.0.8"
    #subconfig.vm.provider "virtualbox" do |v|
      #v.name = "win1"
      #v.memory = 2048
      #v.cpus = 2
  end
  config.vm.define "win2" do |subconfig|
    subconfig.vm.box = "gusztavvargadr/windows-server"
    subconfig.vm.hostname = "win2"
    subconfig.vm.network :private_network, ip: "192.168.33.9"
    subconfig.vm.network :private_network, ip: "10.64.0.9"
  #subconfig.vm.provider "virtualbox" do |v|
  #v.name = "win2"
  #v.memory = 2048
  #v.cpus = 2
  end


  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.verbose        = true
    ansible.limit          = "all"
    ansible.inventory_path = "./inventory"
  end
end
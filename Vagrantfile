Vagrant.configure("2") do |config|

config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
    v.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    v.gui = true
    v.customize ['modifyvm', :id, '--cableconnected1', 'on']
    v.memory = 2048
    v.cpus = 2
end

config.vm.usable_port_range = 8000..8999

config.vm.define "leaf01" do |leaf01|
leaf01.vm.box = "CumulusCommunity/cumulus-vx"
# Internal network for swp* interfaces.
    leaf01.vm.network "private_network", virtualbox__intnet: "intnet-1", auto_config: false
    leaf01.vm.network "private_network", virtualbox__intnet: "intnet-3", auto_config: false
    leaf01.vm.network "private_network", virtualbox__intnet: "intnet-4", auto_config: false
    leaf01.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "leaf02" do |leaf02|
    leaf02.vm.box = "CumulusCommunity/cumulus-vx"
    # Internal network for swp* interfaces.
    leaf02.vm.network "private_network", virtualbox__intnet: "intnet-2", auto_config: false
    leaf02.vm.network "private_network", virtualbox__intnet: "intnet-3", auto_config: false
    leaf02.vm.network "private_network", virtualbox__intnet: "intnet-4", auto_config: false
    leaf02.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc4', 'allow-vms']
    end    
end
config.vm.define "spine01" do |spine01|
    spine01.vm.box = "CumulusCommunity/cumulus-vx"
    # Internal network for swp* interfaces.
    spine01.vm.network "private_network", virtualbox__intnet: "intnet-1", auto_config: false
    spine01.vm.network "private_network", virtualbox__intnet: "intnet-2", auto_config: false
    spine01.vm.provider "virtualbox" do |vbox|
        vbox.customize ['modifyvm', :id, '--nicpromisc2', 'allow-vms']
        vbox.customize ['modifyvm', :id, '--nicpromisc3', 'allow-vms']
    end
end    
end

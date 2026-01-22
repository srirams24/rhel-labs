Vagrant.configure("2") do |config|
  # Box definition, ensuring compatibility with libvirt
  config.vm.box = "rockylinux/10"
  config.vm.box_url = 'https://dl.rockylinux.org/pub/rocky/10/images/x86_64/Rocky-10-Vagrant-Vbox-10.1-20251116.0.x86_64.box'

  # Node 1 configuration
  config.vm.define "node1" do |node1|
    node1.vm.hostname = "node1.local"
    node1.vm.network "private_network", type: "dhcp"
    node1.vm.provider "virtualbox" do |libvirt|
      libvirt.memory = 1024 # Memory in MB
      libvirt.cpus = 1      # Number of CPUs
    end
  end

  # Node 2 configuration
  config.vm.define "node2" do |node2|
    node2.vm.hostname = "node2.local"
    node2.vm.network "private_network", type: "dhcp"
    node2.vm.provider "virtualbox" do |libvirt|
      libvirt.memory = 1024 # Memory in MB
      libvirt.cpus = 1      # Number of CPUs
    end
  end

  # Provisioning with Ansible
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "rhel_provision.yml"
  end
end


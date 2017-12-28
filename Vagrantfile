Vagrant.configure("2") do |config|

  # ###################################################
  # VM for testing the local development playbook.
  # Start with 'vagrant up localdev'.
  # ###################################################
  config.vm.define "localdev", autostart: false do |localdev|
    localdev.vm.box = "geerlingguy/ubuntu1604"
    localdev.vm.hostname = 'localdev'

    localdev.vm.network :private_network, ip: "192.168.56.110"
    localdev.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"

    localdev.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "localdev"]
    end

    # Run Ansible from the Vagrant Host
    localdev.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/setup-openvpn.yml"
      ansible.groups = {
        "tag_Role_HUB" => "localdev",
        "dbservers" => "localdev"
      }
      ansible.sudo = true
      ansible.verbose = "vvvv"
      ansible.limit = "all"
    end
  end

end

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 80, 4567

  config.vm.synced_folder "./shared", "/shared"

  config.vm.provision :puppet do |puppet|
    puppet.manifest_path="manifests"
    puppet.manifest_file="init.pp"
    puppet.module_path="modules"
  end

end

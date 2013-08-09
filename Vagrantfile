# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.hostname = "x.nordea.com"
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :puppet do |puppet|
    puppet.manifest_path="manifests"
    puppet.manifest_file="init.pp"
    puppet.module_path="modules"
  end

  config.vm.network :forwarded_port, guest: 80, host: 45678

end

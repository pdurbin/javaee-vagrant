# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# http://vagrantup.com/v1/docs/vagrantfile.html

Vagrant::Config.run do |config|
  config.vm.box = "centos"
  config.vm.box_url = "https://dl.dropbox.com/u/7225008/Vagrant/CentOS-6.3-x86_64-minimal.box"

  config.vm.network :hostonly, "33.33.33.10"
  config.vm.forward_port 8080, 9000
  config.vm.share_folder "examples", "/examples", "examples"

  config.vm.customize ["modifyvm", :id, "--memory", 1024]


  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.manifest_file  = "init.pp"
    #puppet.options = "--verbose --debug"
  end
end

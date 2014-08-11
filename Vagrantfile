# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"

  config.cache.scope = :box
  config.cache.enable :generic, {
    "pip" => { cache_dir: "/var/cache/pip" },
  }

  config.vm.provision :shell, :path => "Vagrantprovision.sh"
  config.vm.network :forwarded_port, host: 8000, guest: 8000
end
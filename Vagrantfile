# -*- mode: ruby -*-
# vi: set ft=ruby :

# box repo into env var, so private repos/cache can be used. Defaults to http://aka.ms
box_repo = ENV['box_repo'] != nil ? ENV['box_repo'].strip : 'http://aka.ms'

Vagrant.configure("2") do |config|
  config.vm.box = "modern.ie/xp-ie6"
  config.vm.box_url = box_repo + "/vagrant-xp-ie6"

  # big timeout since windows boot is very slow
  config.vm.boot_timeout = 500

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.linked_clone = true
    vb.name = "RepackageTest"
  end

  # rdp forward
  config.vm.network "forwarded_port", guest: 3389, host: 3389, id: "rdp", auto_correct: true

  # winrm config, uses modern.ie default user/password. If other credentials are used must be changed here
  config.vm.communicator = "winrm"
  config.winrm.username = "IEUser"
  config.winrm.password = "Passw0rd!"

  config.vm.provider "virtualbox" do |vb|
    # first setup requires gui to be enabled so scripts can be executed in virtualbox guest screen
    #vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "512"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id,  "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
  end
end

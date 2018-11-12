Vagrant.configure("2") do |config|
    config.vm.box = "uchida/freebsd"
    config.vm.synced_folder ".", "/vagrant", type: "rsync"
    config.vm.provision "shell", path: "bootstrap.sh"
end

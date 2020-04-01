Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provision "shell", inline: <<-SHELL
    curl -s https://github.com/k-kurumi.keys >> /home/vagrant/.ssh/authorized_keys
  SHELL
end

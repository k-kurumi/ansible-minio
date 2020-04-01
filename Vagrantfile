Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.33.10"

  # vagrant sshの鍵を上書きしないようにする
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "/tmp/id_rsa.pub"
  config.vm.provision "shell", inline: <<-SHELL
    cat /tmp/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
  SHELL
end

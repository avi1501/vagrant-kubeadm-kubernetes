Vagrant.configure("2") do |config|
    config.vm.define "master" do |master|
      master.vm.box_download_insecure = true    
      master.vm.box = "bento/ubuntu-20.04"        ## For ubuntu 18.04 use - hashicorp/bionic64
      master.vm.network "private_network", ip: "100.0.0.1"
      master.vm.hostname = "master"
      master.vm.provider "virtualbox" do |v|
        v.name = "master"
        v.memory = 4096
        v.cpus = 2
      end
    end
  
    config.vm.define "worker1" do |worker|
      worker.vm.box_download_insecure = true 
      worker.vm.box = "bento/ubuntu-20.04"        ## For ubuntu 18.04 use - hashicorp/bionic64
      worker.vm.network "private_network", ip: "100.0.0.2"
      worker.vm.hostname = "worker1"
      worker.vm.provider "virtualbox" do |v|
        v.name = "worker1"
        v.memory = 2048
        v.cpus = 1
      end
    end
  
    config.vm.define "worker2" do |worker|
      worker.vm.box_download_insecure = true 
      worker.vm.box = "bento/ubuntu-20.04"        ## For ubuntu 18.04 use - hashicorp/bionic64
      worker.vm.network "private_network", ip: "100.0.0.3"
      worker.vm.hostname = "worker2"
      worker.vm.provider "virtualbox" do |v|
        v.name = "worker2"
        v.memory = 2048
        v.cpus = 1
      end
    end
  
  end
  
  
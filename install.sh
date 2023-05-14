# double check with running these commands twice
sudo apt-get update
sudo apt install docker.io
sudo systemctl enable docker
sudo systemctl start docker
sudo ufw disable
sudo swapoff -a
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo bash -c 'echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list'
sudo apt-get update && sudo apt-get install -y kubelet kubeadm kubectl
sudo systemctl enable kubelet
sudo systemctl start kubelet

# paste this in /etc/hosts file for dns resolution locally 

# 100.0.0.1 master.example.com master
# 100.0.0.2 worker1.example.com worker1
# 100.0.0.3 worker2.example.com worker2

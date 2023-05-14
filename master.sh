sudo kubeadm init --apiserver-advertise-address=100.0.0.1 --pod-network-cidr=10.244.0.0/16
# sudo kubeadm init --apiserver-advertise-address=<master-IP-Address> --pod-network-cidr=10.244.0.0/16

kubeadm join 100.0.0.1:6443 --token woen6j.kc0wz69i4pz3zt53 --discovery-token-ca-cert-hash sha256:799efe3af36881fad8850a4118b5ca8ff04efb4856d108bb9fdd037435bc5ca3


mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


# network configuration yaml needed to setup networking between nodes for communication


wget https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# add --iface-eth1 in last container 
    # args:
    #     - --ip-masq
    #     - -- kube-subnet-mgr
    #     - --iface=eth1

# kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl apply -f kube-flannel.yml

# kubectl get pod <pod-name> -o wide

# url for the potential error 
# https://stackoverflow.com/questions/61305498/kubernetes-couldnt-able-to-join-master-node-error-execution-phase-preflight
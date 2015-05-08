sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y
sudo mkdir /tmp/packer-provisioner-ansible-local
sudo chmod -R 777 /tmp/packer-provisioner-ansible-local
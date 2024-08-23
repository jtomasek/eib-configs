sudo rm ./example.img
sudo qemu-img create -f qcow2 mgmt-cluster.img 40G
sudo virt-install --name prueba --memory 16000 --vcpus 4 --disk ./mgmt-cluster.img --install no_install=yes --cdrom ./eib/eib-mgmt-cluster-image.iso --network network=default,mac=aa:aa:aa:bb:bb:22 --osinfo detect=on,name=sle-unknown

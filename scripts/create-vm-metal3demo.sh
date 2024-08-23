sudo virsh destroy alberto
sudo virsh undefine alberto
sudo virt-install --name alberto --memory 64000 --vcpus 24 --disk /var/lib/libvirt/images/alberto-eib.qcow2 --location ~/isos/ubuntu/ubuntu-22.04.3-live-server-amd64.iso,kernel=casper/vmlinuz,initrd=casper/initrd --graphics none --osinfo ubuntu22.04 --console pty,target_type=serial --debug --extra-args='console=ttyS0,115200n8 --- console=ttyS0,115200n8'

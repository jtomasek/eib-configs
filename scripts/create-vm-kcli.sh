shopt -s expand_aliases
source ~/.bashrc

# downstream elemental cluster machine
# kcli create vm -P iso=eib-elemental-image.iso -P pool=VMs -P memory=16384 -P numcpus=4 -P disks=['{"size": 10, "interface": "sata"}'] -P nets=['{"name": "default"}]' -P tpm=true jtomasek-elemental-node-$(date +%s)

# mgmt cluster machine
# kcli create vm -P iso=jtomasek-eib-sno-rke-rancher-cluster.iso -P pool=VMs -P memory=32768 -P numcpus=8 -P disks=['{"size": 20, "interface": "sata"}'] -P nets=['{"name": "default", "mac": "aa:aa:aa:aa:aa:31"}]' jtomasek-mgmt-sno

# rancher2..9.0 mgmt cluster machine
kcli create vm -P iso=jtomasek-slm6.0-rke-rancher2.9.0-cluster.iso -P pool=VMs -P memory=32768 -P numcpus=8 -P disks=['{"size": 20, "interface": "sata"}'] -P nets=['{"name": "default", "mac": "aa:aa:aa:aa:aa:41"}]' jtomasek-mgmt-rancher2.9.0

# fedora40
# curl -L https://download.fedoraproject.org/pub/fedora/linux/releases/40/Cloud/x86_64/images/Fedora-Cloud-Base-Generic.x86_64-40-1.14.qcow2 > ../VMs/fedora40.qcow2
# kcli create vm -P image=fedora40.qcow2 -P pool=VMs -P memory=16384 -P numcpus=4 -P disks=['{"size": 10, "interface": "sata"}'] -P nets=['{"name": "default"}]' -P tpm=true -P uefi=true jtomasek-f





#kcli create vm -P iso=eib-mgmt-cluster-image.iso -P pool=images -P memory=162048 -P numcpus=8 -P disks=['{"size": 60, "interface": "sata"}'] -P nets=['{"name": "default", "mac": "aa:aa:aa:bb:bb:22"}]' prueba-alberto-$(date --iso-8601=min)

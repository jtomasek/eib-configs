shopt -s expand_aliases
source ~/.bashrc

# downstream elemental cluster machine
# kcli create vm -P iso=eib-elemental-image.iso -P pool=VMs -P memory=16384 -P numcpus=4 -P disks=['{"size": 10, "interface": "sata"}'] -P nets=['{"name": "default"}]' -P tpm=true jtomasek-elemental-node-$(date +%s)

# mgmt cluster machine
# kcli create vm -P iso=jtomasek-eib-sno-rke-rancher-cluster.iso -P pool=VMs -P memory=32768 -P numcpus=8 -P disks=['{"size": 20, "interface": "sata"}'] -P nets=['{"name": "default", "mac": "aa:aa:aa:aa:aa:31"}]' jtomasek-mgmt-sno

# rancher2.9.0 mgmt cluster machine
# kcli create vm -P iso=jtomasek-slm6.0-rke-rancher2.9.2-cluster.iso -P pool=VMs -P memory=32768 -P numcpus=8 -P disks=['{"size": 50, "interface": "sata"}'] -P nets=['{"name": "default", "mac": "aa:aa:aa:aa:aa:32"}]' jtomasek-mgmt-rancher2.9.2

# rancher2.10.0 mgmt cluster machine
# kcli create vm \
#   -P iso=jtomasek-slm6.0-rke2-rancher2.10-cluster.iso \
#   -P pool=VMs \
#   -P memory=32768 \
#   -P numcpus=8 \
#   -P disks=['{"size": 50, "interface": "sata"}'] \
#   -P nets=['{"name": "default", "mac": "aa:aa:aa:aa:aa:22"}]' \
#   jtomasek-mgmt-rancher2.10

# edge-3.3
kcli create vm \
  -P iso=edge-3.3.0.iso \
  -P pool=VMs \
  -P memory=32768 \
  -P numcpus=8 \
  -P disks=['{"size": 50, "interface": "sata"}'] \
  -P nets=['{"name": "default", "mac": "aa:aa:aa:aa:aa:82", "ip": "192.168.122.82", "reserveip": "true"}]' \
  jtomasek-3.3.0-1

# kcli create vm \
#   -P iso=eib-mgmt-cluster-image-32.iso \
#   -P pool=default \
#   -P memory=162048 \
#   -P numcpus=8 \
#   -P disks=['{"size": 60, "interface": "sata"}'] \
#   -P nets=['{"name": "default", "mac": "aa:aa:aa:bb:bb:22", "ip": "192.168.122.45", "reserveip": "true"}]' \
#   prueba-alberto-default

  # -P nets=['{"name": "default", "mac": "aa:aa:aa:aa:aa:70"}]' \

# fedora40
# curl -L https://download.fedoraproject.org/pub/fedora/linux/releases/40/Cloud/x86_64/images/Fedora-Cloud-Base-Generic.x86_64-40-1.14.qcow2 > ../VMs/fedora40.qcow2
# kcli create vm -P image=fedora40.qcow2 -P pool=VMs -P memory=16384 -P numcpus=4 -P disks=['{"size": 10, "interface": "sata"}'] -P nets=['{"name": "default"}]' -P tpm=true -P uefi=true jtomasek-f

# plain SL Micro 6
# kcli create vm \
#   -P iso=slm6-image.iso  \
#   -P pool=VMs \
#   -P memory=16384 \
#   -P numcpus=4 \
#   -P disks=['{"size": 10, "interface": "sata"}'] \
#   -P nets=['{"name": "default"}]' \
#   -P tpm=true \
#   -P uefi=true \
#   jtomasek-device6




#kcli create vm -P iso=eib-mgmt-cluster-image.iso -P pool=images -P memory=162048 -P numcpus=8 -P disks=['{"size": 60, "interface": "sata"}'] -P nets=['{"name": "default", "mac": "aa:aa:aa:bb:bb:22"}]' prueba-alberto-$(date --iso-8601=min)

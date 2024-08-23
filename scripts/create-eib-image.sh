if [ $# -ne 1 ]; then 
	echo "use: ./create-eib-image.sh [mgmt|edge]"
	exit 1
fi

if [ $1 == "mgmt" ];then
	# mgmt cluster
	sudo podman run --rm --privileged -it -v ./eib-sno-rke-rancher:/eib \
           registry.suse.com/edge/edge-image-builder:1.0.2 \
           build --definition-file iso-definition.yaml
elif [ $1 == "slm60" ];then
	# mgmt cluster
	sudo podman run --rm --privileged -it -v ./eib-sno-rke-rancher2.9.0:/eib \
           registry.suse.com/edge/edge-image-builder:1.0.2 \
           build --definition-file iso-definition.yaml
elif [ $1 == "elemental-node" ];then
	# edge cluster
	sudo podman run --rm --privileged -it -v ./eib-elemental-image:/eib \
           registry.suse.com/edge/edge-image-builder:1.0.2 \
           build --definition-file iso-definition.yaml
else
	echo "error param: [mgmt|elemental-node|slm60] only supported"
	exit 1
fi


up:
	ansible-playbook dhcpdeploy.yml -i ./inventory/hosts.yml --extra-vars "target=${TARGET}"
cona_up:
	TARGET=conatel make up
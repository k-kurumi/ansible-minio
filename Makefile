.PHONY: vm_up
vm_up:
	vagrant up

.PHONY: vm_destroy
vm_destroy:
	vagrant destroy --force

.PHONY: ansible_ping
ansible_ping:
	ansible all -m ping

.PHONY: ansible_apply
ansible_apply:
	ansible-playbook site.yml

.PHONY: ssh_vagrant
ssh_vagrant:
	ssh -F ssh_config vagrant

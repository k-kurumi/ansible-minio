.PHONY: init
init:
	pipenv sync

.PHONY: up
up:
	vagrant up

.PHONY: destroy
destroy:
	vagrant destroy --force

.PHONY: ping
ping:
	pipenv run ansible all -m ping

.PHONY: apply
apply:
	pipenv run ansible-playbook site.yml

.PHONY: ssh
ssh:
	ssh -F ssh_config vagrant

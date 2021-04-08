SHELL := /bin/bash

test:
	$(MAKE) check

init:
	terraform init

upgrade:
	terraform init -upgrade

fmt:
	for a in *.tf *.tfvars; do if [[ -f $$a ]]; then terraform fmt $$a; fi; done

validate:
	terraform validate

check:
	checkov -d .

plan:
	terraform plan -out=.plan

apply:
	terraform apply .plan
	rm -f .plan

refresh:
	terraform refresh

console:
	terraform console

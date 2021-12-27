.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

all: dnf-upgrade ansible-install rust-install go-install ansible-run ## Run all tasks (fresh install)

rust-install: ## Install Rust toolchain
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
go-install: ## Install Go toolchain
	curl https://go.dev/dl/go1.17.4.linux-amd64.tar.gz -L -o /tmp/go1.17.4.linux-amd64.tar.gz
	rm -rf /usr/local/go && tar -C /usr/local -xzf /tmp/go1.17.4.linux-amd64.tar.gz
ansible-install: ## Install ansible
	dnf install ansible
ansible-run: ## Run the setup.yml ansible playbook
	ansible-playbook setup.yml
dnf-update: ## Update packages using dnf
	dnf update

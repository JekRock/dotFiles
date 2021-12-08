all: dnf-upgrade ansible-install rust-install go-install ansible-run

rust-install:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
go-install:
	curl https://go.dev/dl/go1.17.4.linux-amd64.tar.gz -L -o /tmp/go1.17.4.linux-amd64.tar.gz
	rm -rf /usr/local/go && tar -C /usr/local -xzf /tmp/go1.17.4.linux-amd64.tar.gz
ansible-install:
	dnf install ansible
ansible-run:
	ansible-playbook setup.yml
dnf-upgrade:
	dnf upgrade

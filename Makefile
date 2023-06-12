# After a Mac OS update, it is necessary to install nix
reinstall:
	sudo rm /etc/bash.bashrc.backup-before-nix
	sudo rm /etc/zshrc.backup-before-nix
	sh <(curl -L https://nixos.org/nix/install)
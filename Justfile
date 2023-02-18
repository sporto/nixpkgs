build:
	home-manager switch -b bak

upgrade:
	nix flake update
	home-manager switch
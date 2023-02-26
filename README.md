# My home configuration (.dotfile) files via Nix Home Manager

Clone this repository to `~/.config/nixpkgs`

## Enable Flakes

```
mkdir -p ~/.config/nix
```

In `~/.config/nix/nix.conf` add

```
experimental-features = nix-command flakes
```


## Restart the daemon

```
sudo launchctl kickstart -k system/org.nixos.nix-daemon
```

## Install home manager

```
nix run . switch
```

## Rebuild

```
home-manager switch -b bak
```

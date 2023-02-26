{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      withArch = arch:
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${arch};
          modules = [ ./home.nix ];
        };
    in {
      defaultPackage = {
        aarch64-darwin = home-manager.defaultPackage.aarch64-darwin;
        aarch64-linux = home-manager.defaultPackage.aarch64-linux;
        x86_64-darwin = home-manager.defaultPackage.x86_64-darwin;
        x86_64-linux = home-manager.defaultPackage.x86_64-linux;
      };

      homeConfigurations = {
        "sebastian@SebastianMBPM1Stax.lan" = withArch "aarch64-darwin";
        "Sebastian@sebastianmbpintel.lan" = withArch "x86_64-darwin";
        "sebastian@pop-os" = withArch "x86_64-linux";
      };
    };
}
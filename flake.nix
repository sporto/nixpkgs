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
      withArch = user: arch:
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${arch};
          modules = [ ./home.nix ];
          extraSpecialArgs = {
            user = user;
          };
        };
    in {
      defaultPackage = {
        aarch64-darwin = home-manager.defaultPackage.aarch64-darwin;
        aarch64-linux = home-manager.defaultPackage.aarch64-linux;
        x86_64-darwin = home-manager.defaultPackage.x86_64-darwin;
        x86_64-linux = home-manager.defaultPackage.x86_64-linux;
      };

      # terminal: hostname
      homeConfigurations = {
        # Mac M1
        "sebastian@sebastianmbpm1stax.lan" = withArch "sebastian" "aarch64-darwin";
        # Mac Intel
        "Sebastian@sebastianmbpintel.lan" = withArch "sebastian" "x86_64-darwin";
        "sebastian@sebastianmbp2017.lan" = withArch "sebastian" "x86_64-darwin";
        "sebastian@pop-os" = withArch "sebastian" "x86_64-linux";
      };
    };
}

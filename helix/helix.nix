{ pkgs, ... }:

{
  home.packages = [
    pkgs.helix
  ];
  xdg.configFile."helix/config.toml".text = ''
    ${builtins.readFile ./config.toml}
  '';
}
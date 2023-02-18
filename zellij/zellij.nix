{ pkgs, ... }:

{
  home.packages = [
    pkgs.zellij
  ];
  xdg.configFile."zellij/config.kdl".text = ''
    ${builtins.readFile ./config.kdl}
  '';
}
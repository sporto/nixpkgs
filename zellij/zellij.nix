{ pkgs, ... }:

{
  home.packages = [
    # Install Zellij in a different way, as this is broken
    # pkgs.zellij
  ];
  xdg.configFile."zellij/config.kdl".text = ''
    ${builtins.readFile ./config.kdl}
  '';
}
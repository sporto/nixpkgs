{ pkgs, ... }: {
  home.username = "Sebastian";
  home.homeDirectory = "/Users/Sebastian";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

  home.packages = [
    pkgs.bashInteractive
    pkgs.chezmoi
    pkgs.just
    pkgs.sl
  ];

  # programs.alacritty = {
  #   enable = true;
  #   settings = {
  #     font.size = 13;
  #     shell.program = "zsh";
  #   };
  # };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.fzf = {
    enable = true;
  };

  programs.git = {
    enable = true;
    includes = [{ path = "~/.config/nixpkgs/gitconfig"; }];
  };

  programs.helix = {
    enable = true;
  };

  programs.mcfly = {
    enable = true;
  };

  programs.starship = {
    enable = true;
  };

  programs.zoxide = {
    enable = true;
  };

  programs.zellij = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    initExtra = builtins.readFile ./zshrc;
  };

  imports = [ ./alacritty/alacritty.nix ];
}
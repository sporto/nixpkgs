{ pkgs, user, ... }: {

  home.username =
    user;
    # # "Sebastian";
    # builtins.getEnv "USER";

  home.homeDirectory =
    # builtins.getEnv "HOME";
    # "/${if pkgs.stdenv.isDarwin then "Users" else "home"}/${builtins.getEnv "USER"}";
    if pkgs.stdenv.isDarwin then
      "/Users/${user}"
    else
      "/home/${user}";

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;

  home.packages = [
    pkgs.bashInteractive
    pkgs.just
  ];

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

  programs.gpg = {
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

  programs.zsh = {
    enable = true;
    initExtra = builtins.readFile ./zshrc;
    enableAutosuggestions = true;
  };

  imports = [
    ./alacritty/alacritty.nix
    ./helix/helix.nix
    ./sublime/sublime.nix
    ./zellij/zellij.nix
  ];
}

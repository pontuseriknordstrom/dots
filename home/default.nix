{ pkgs, ... }:

{
  home.username = "tux";
  home.homeDirectory = "/home/tux";

  # symlink dotfiles from dots/ into ~/.config/
  xdg.configFile = {
    "helix".source = ../dots/helix;
    "hypr".source = ../dots/hyprland;
  };

  # user packages (apps that don't need system-level config)
  home.packages = with pkgs; [

  ];

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}


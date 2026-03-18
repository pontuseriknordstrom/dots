{ pkgs, ... }:

{
  home.username = "tux";
  home.homeDirectory = "/home/tux";

  # symlink dotfiles from dots/ into ~/.config/
  xdg.configFile = {
    "helix".source = ../dots/helix;
    "hypr".source = ../dots/hyprland;
  };

  # user packages
  home.packages = with pkgs; [
    # shell stuff
    quickshell

    # editor & terminal
    helix
    foot
    tmux

    # apps
    _1password-gui
    vesktop

    # hyprland utils
    brightnessctl
    playerctl
    grim
    slurp
    wl-clipboard

    # hyprland extras
    hyprlock
  ];

  # change ugly default hyprland cursor
  home.pointerCursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 28;
    gtk.enable = true;
  };

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

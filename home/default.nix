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

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

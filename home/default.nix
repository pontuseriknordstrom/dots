{ pkgs, ... }:

{
  home.username = "tux";
  home.homeDirectory = "/home/tux";

  # symlink dotfiles from dots/ into ~/.config/
  xdg.configFile = {
    "helix".source = ../dots/helix;
    "hypr".source = ../dots/hyprland;
  };

  # fonts
  fonts.fontconfig.enable = true;

  # user packages
  home.packages = with pkgs; [
    # editor & terminal
    helix
    foot
    tmux

    # apps
    _1password-gui
    vesktop

    # shell/bar
    inputs.tpanel.packages.${stdenv.hostPlatform.system}.default
    iosevka-bin

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

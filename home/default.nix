{ pkgs, inputs, ... }:

{
  home.username = "tux";
  home.homeDirectory = "/home/tux";

  # Symlink dotfiles into ~/.config/
  xdg.configFile = {
    "helix".source = ../dots/helix;
    "hypr".source = ../dots/hyprland;
    "waybar".source = ../dots/waybar;
    "fuzzel".source = ../dots/fuzzel;
    "mako".source = ../dots/mako;
  };

  # Fonts
  fonts.fontconfig.enable = true;

  # Cursor
  home.pointerCursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 24;
    gtk.enable = true;
  };

  # User packages
  home.packages = with pkgs; [
    # Editor & terminal
    helix
    foot
    tmux

    # Apps
    _1password-gui
    vesktop

    # Bar / Launcher / Notifications
    waybar
    fuzzel
    mako
    iosevka-bin
    libnotify

    # Hyprland utilities
    brightnessctl
    playerctl
    grim
    slurp
    wl-clipboard

    # Hyprland extras
    hyprlock
    hyprpicker
  ];

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

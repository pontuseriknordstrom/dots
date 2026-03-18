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
    "foot".source = ../dots/foot;
    "fish/config.fish".source = ../dots/fish/config.fish;
    "starship.toml".source = ../dots/starship/starship.toml;
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

  # Default to dark mode
  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  # User packages
  home.packages = with pkgs; [
    # Editor & terminal
    helix
    foot
    tmux

    # File manager
    nautilus

    # Shell
    fish
    starship

    # Apps
    _1password-gui
    vesktop

    # Bar / Launcher / Notifications
    waybar
    fuzzel
    mako
    libnotify
    iosevka-bin

    # Hyprland utilities
    brightnessctl
    playerctl
    grim
    slurp
    wl-clipboard

    # Hyprland extras
    hyprlock
    hyprpicker

    # Browser
    librewolf
  ];

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

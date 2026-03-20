{ pkgs, inputs, ... }:

{
  home.username = "tux";
  home.homeDirectory = "/home/tux";

  # Symlink dotfiles into ~/.config/
  xdg.configFile = {
    "helix".source = ../dots/helix;
    "foot".source = ../dots/foot;
    "fish/config.fish".source = ../dots/fish/config.fish;
    "starship.toml".source = ../dots/starship/starship.toml;
  };

  # Fonts
  fonts.fontconfig.enable = true;

  # User packages
  home.packages = with pkgs; [
    # Editor & terminal
    helix
    foot
    tmux

    # Shell
    fish
    starship
    
    # Apps
    _1password-gui
    vesktop

    # Fonts
    iosevka-bin
  ];

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

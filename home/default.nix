{ pkgs, inputs, ... }:

{
  home.username = "tux";
  home.homeDirectory = "/home/tux";

  # symlink dotfiles into ~/.config/
  xdg.configFile = {
    "helix".source = ../dots/helix;
    "foot".source = ../dots/foot;
    "fish/config.fish".source = ../dots/fish/config.fish;
    "starship.toml".source = ../dots/starship/starship.toml;
  };

  # fonts
  fonts.fontconfig.enable = true;

  # user packages
  home.packages = with pkgs; [
    # editor & terminal
    helix
    foot
    tmux

    # shell prompt
    starship
    
    # apps
    _1password-gui
    vesktop
    inputs.helium.packages.${pkgs.system}.default

    # fonts
    iosevka-bin
  ];

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

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

  home.packages = with pkgs; [
    # editor & terminal
    helix
    foot

    # shell prompt
    starship
    
    # apps
    _1password-gui
    vesktop
    inputs.helium.packages.${pkgs.system}.default

    # cursor
    vanilla-dmz

    # video player
    mpv
  ];

  # setup git
  programs.git = {
    enable = true;
    userName = "pontus";
    userEmail = "pontus@fastmail.org";
  };
  
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

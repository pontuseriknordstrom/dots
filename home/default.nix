{ pkgs, inputs, ... }:

{
  imports = [ ./plasma.nix ];
  
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
  ];

  # setup git
  programs.git = {
    enable = true;
    userName = "pontus";
    userEmail = "pontus@fastmail.org";
  };

  # needs to be changed in plasma.nix too
  home.pointerCursor = {
    name = "Vanilla-DMZ";
    size = 32;
    package = pkgs.vanilla-dmz;
    gtk.enable = true;
    x11.enable = true;
  };
  
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

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
  ];

  # setup git
  programs.git = {
    enable = true;
    userName = "pontus";
    userEmail = "pontus@fastmail.org";
  };

  # lets home-manager configure gnome settings
  programs.dconf.enable = true;
  
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}

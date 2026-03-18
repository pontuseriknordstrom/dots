{ pkgs, inputs, lib, ... }:

{
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    # editor
    helix

    # terminal & tools
    foot
    tmux
    wget
    git
    direnv

    # apps
    _1password-gui
    vesktop
    inputs.zen-browser.packages.${stdenv.hostPlatform.system}.default
  ];
}

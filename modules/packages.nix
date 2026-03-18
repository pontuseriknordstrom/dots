{ pkgs, inputs, lib, ... }:

{
  # keep this here, sets up a bunch of 32 bit deps
  # and sandbox stuff that we can't do in home manager
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    # tools
    wget
    git
    direnv
  ];
}

{ pkgs, ... }:

{
  programs.fish.enable = true;
  programs.starship.enable = true;

  environment.systemPackages = [
    pkgs.foot
  ];
}

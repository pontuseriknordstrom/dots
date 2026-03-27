{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    direnv
    tmux
  ];
}

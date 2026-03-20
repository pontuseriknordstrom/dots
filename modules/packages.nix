{ pkgs, inputs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    # tools
    wget
    git
    direnv
    tmux
  ];
}

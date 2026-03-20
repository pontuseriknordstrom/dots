{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # tools
    wget
    direnv
    tmux
  ];
}

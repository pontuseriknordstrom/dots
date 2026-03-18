{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/audio.nix
    ./modules/desktop.nix
    ./modules/services.nix
    ./modules/packages.nix
  ];

  # locale
  time.timeZone = "Europe/Stockholm";
  i18n.defaultLocale = "en_US.UTF-8";

  # user
  users.users.tux = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  # default to fish shell
  programs.fish.enable = true;
  users.users.tux.shell = pkgs.fish;

  # nix settings
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}

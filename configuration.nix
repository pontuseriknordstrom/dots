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
    ./modules/fonts.nix
    ./modules/gaming.nix
  ];

  # locale
  time.timeZone = "Europe/Stockholm";
  i18n.defaultLocale = "en_US.UTF-8";

  # user
  users.users.tux = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  # fish
  programs.fish.enable = true;

  # appimages
  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  # zram swap
  zramSwap.enable = true;

  # flatpak
  services.flatpak.enable = true;

  # nix settings
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}

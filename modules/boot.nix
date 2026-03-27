{ pkgs, lib, ... }:

{
  # latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # lanzaboote for secure boot
  boot.loader.systemd-boot.enable = lib.mkForce false;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.lanzaboote = {
    enable = true;
    pkiBundle = "/var/lib/sbctl";
  };

  environment.systemPackages = [ pkgs.sbctl ];
}

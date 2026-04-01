{ pkgs, ... }:

{
  services.desktopManager.plasma6.enable = true;
  
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    khelpcenter
    kinfocenter
    kate
    konsole
    kwalletmanager
    okular
    elisa
    plasma-systemmonitor
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.libinput.enable = true;

  # Printing & mDNS discovery
  services.printing.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}

{ ... }:

{
  # printing
  services.printing.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  # power management
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
}

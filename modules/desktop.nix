{ ... }:

{
  services.xserver.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;
  services.displayManager.gdm.wayland = true;
}

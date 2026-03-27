{ pkgs, ... }:

{
  # KDE Plasma 6 on Wayland
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  # strip KDE bloat
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    konsole
    oxygen
    elisa        # music player
    dragon       # video player
    kate         # text editor (using helix)
    kmail
    kontact
    korganizer
    kaddressbook
    kpat         # solitaire
    kgeography
    marble
    kturtle
    gwenview     # image viewer (optional, uncomment to keep)
  ];
}

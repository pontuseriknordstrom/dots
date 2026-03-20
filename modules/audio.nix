{ ... }:

{
  # pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    pulse.enable = true;
    alsa.enable = true;
  };

  # bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}

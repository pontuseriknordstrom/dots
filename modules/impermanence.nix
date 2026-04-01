{ ... }:

{
  programs.fuse.userAllowOther = true;

  environment.persistence."/persist" = {
    hideMounts = true;
    directories = [
      "/var/lib/nixos"
      "/etc/NetworkManager/system-connections"
      "/var/lib/bluetooth"
      "/var/lib/sbctl"
      "/var/db/sudo"
      "/var/lib/sddm"
      "/var/lib/NetworkManager"
    ];

    files = [
      "/etc/machine-id"
    ];
  };
}

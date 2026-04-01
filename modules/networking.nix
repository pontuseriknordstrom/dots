{ lib, ... }:

{
  networking.hostName = "ignis";
  networking.networkmanager.enable = true;
  networking.networkmanager.dns = lib.mkForce "none";
  networking.firewall.enable = true;  

  services.resolved = {
    enable = true;
    dnsovertls = "true";
  };

  system.activationScripts.nextdns = ''
    if [ -f /persist/secrets/nextdns-id ]; then
      NEXTDNS_ID=$(cat /persist/secrets/nextdns-id)
      mkdir -p /etc/systemd/resolved.conf.d
      printf '[Resolve]\nDNS=45.90.28.0#%s.dns.nextdns.io\nDNS=2a07:a8c0::#%s.dns.nextdns.io\nDNS=45.90.30.0#%s.dns.nextdns.io\nDNS=2a07:a8c1::#%s.dns.nextdns.io\nDNSOverTLS=yes\nDomains=~.\n' "$NEXTDNS_ID" "$NEXTDNS_ID" "$NEXTDNS_ID" "$NEXTDNS_ID" > /etc/systemd/resolved.conf.d/nextdns.conf
      systemctl restart systemd-resolved || true
    fi
  '';
}

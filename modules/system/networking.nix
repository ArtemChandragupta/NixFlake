{ pkgs, ... }:{

networking = {
  hostName = "nixos";
  networkmanager.enable = true;
  firewall = {
    enable = true;
    allowedTCPPorts = [ 80 443 53317 ]; # 53317 is for LocalSend
    allowedUDPPortRanges = [
      { from = 4000; to = 4007; }
      { from = 53315; to = 53318; }
      { from = 8000; to = 8010; }
    ];
  };
};

environment.systemPackages = [
  pkgs.networkmanagerapplet
  pkgs.tor
];

services.tor.enable = true;
  
hardware.bluetooth.enable = true;
services.blueman.enable = true;

}

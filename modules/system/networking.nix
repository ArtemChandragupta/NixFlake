{ pkgs, ... }:{

networking = {
  hostName = "nixos";
  networkmanager.enable = true;
  firewall = {
    enable = true;
    allowedTCPPorts = [ 80 443 53317 ]; #53317 for localsend
    allowedUDPPortRanges = [
      { from = 4000; to = 4007; }
      { from = 53315; to = 53318; }
      { from = 8000; to = 8010; }
    ];
  };
};

environment.systemPackages = with pkgs; [
  networkmanagerapplet
  tor
  inetutils
  blueberry

  haguichi
  logmein-hamachi
];

programs.haguichi.enable = true;
services = {
  tor.enable = true;
  blueman.enable = true;
  logmein-hamachi.enable = true;
};

hardware.bluetooth.enable = true;

}

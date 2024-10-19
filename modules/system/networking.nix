{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  networkmanagerapplet # For tray
  inetutils # Utils?
  impala # Tui
];

networking = {
  hostName = "nixos";
  networkmanager = {
    enable = true;
    wifi.backend = "iwd";
  };
  wireless.iwd.enable = true;
};

networking.firewall = {
  enable = false;
  allowedTCPPorts = [ 80 443 53317 ]; #53317 for localsend
  allowedUDPPortRanges = [
    { from = 4000;  to = 4007;  }
    { from = 53315; to = 53318; }
    { from = 8000;  to = 8010;  }
  ];
};

}

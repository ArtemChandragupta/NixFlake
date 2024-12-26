{ pkgs, var, ... }:{

environment.systemPackages = with pkgs; [
  networkmanagerapplet # For tray
  inetutils # Utils?
];

networking = {
  hostName = "${var.host}";
  networkmanager.enable = true;
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

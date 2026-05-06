{ var, ... }:{

networking = {
  hostName = "${var.host}";
  networkmanager.enable = true;
  firewall.enable = true;
};

programs = {
  localsend.enable = true;
  nm-applet.enable = true;
};

}

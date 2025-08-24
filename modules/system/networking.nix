{ pkgs, var, ... }:{

environment.systemPackages = with pkgs; [
  networkmanagerapplet # For tray
  inetutils # Utils?
];

networking = {
  hostName = "${var.host}";
  networkmanager.enable = true;
  firewall.enable = true;
};

programs.localsend.enable = true;

}

{ pkgs, var, ... }:{

services = {
  gvfs.enable    = true; # For trash folder and other
  udisks2.enable = true; # For usb automount
};

environment.systemPackages = [
  pkgs.udiskie # Automount process should be started using hyprland exec-once!
];

home-manager.users.${var.user}.services.udiskie = {
  enable = true;
};

}

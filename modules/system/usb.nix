{ pkgs, ... }:{

services = { # Automount process should be startet using hyprland exec-once! 
  gvfs.enable    = true;
  udisks2.enable = true;
  devmon.enable  = true;
};

environment.systemPackages = with pkgs; [
  usbutils
  udiskie
  udisks
];

}

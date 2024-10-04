{ pkgs, ... }:{

services = {
  xserver.desktopManager.gnome.enable = true;
  gnome.rygel.enable = false;
};

environment.gnome.excludePackages = with pkgs; [
  gnome-color-manager
  gnome-connections
  gnome-text-editor
  gnome-characters
  gnome-terminal
  gnome-calendar
  gnome-contacts
  gnome-console
  gnome-keysign
  gnome-tour
  gnome-maps
  gnome-logs

  simple-scan
  epiphany
  seahorse
  geary
  yelp

  iagno
  hitori
];

}

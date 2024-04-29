{ pkgs, ... }:{

services = {
flatpak.enable = true;
};

environment.systemPackages = with pkgs; [
#  gnome.gnome-software   
];

xdg.portal = {
  enable = true;
  wlr.enable = true;
  #extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
};

}

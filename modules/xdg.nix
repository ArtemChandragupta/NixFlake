{ pkgs, config, ...}:
{

xdg.portal = {
  enable = true;
  wlr.enable = true;
#  extraPortals = [ pkgs.xdg-desktop-portal-hyprland ]; 
  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
};
}

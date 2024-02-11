{ pkgs, config, lib, inputs, ... }:{
home-manager.users.artem = {
wayland.windowManager.hyprland = {
settings    = {

general = {
  gaps_in              = 0;
  gaps_out             = 1;
  border_size          = 1;
 "col.active_border"   = "rgb(d5c4a1)";
 "col.inactive_border" = "rgb(d5c4a1)";
};

decoration = {
  rounding     = 0;
  blur.enabled = false;
  drop_shadow  = false;
};

misc.background_color = "rgb(d5c4a1)";

animations = {
  enabled   = true;
  bezier    = "myBezier, 0.05, 0.9, 0.1, 1.00";
  animation = [
   "windows, 1, 7, default, slide"
   "windowsOut, 1, 7, default, slide"  # popin 80%
   "border, 1, 10, default"
   "borderangle, 1, 8, default"
   "fade, 1, 7, default"
#  "workspaces, 1, 6, default, sidefadevert"
  ];
};

};
};
};
} 

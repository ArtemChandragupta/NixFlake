{ pkgs, config, lib, inputs, ... }:{
home-manager.users.artem = {
wayland.windowManager.hyprland = {
settings  = {

exec-once = "waypaper --restore";

general = {
  gaps_in              = 5;
  gaps_out             = 10;
  border_size          = 2;
 "col.active_border"   = "rgb(504945)"; 
 "col.inactive_border" = "rgb(504945)";
};
    
decoration = {
  rounding = 7;
    
  blur = {
    enabled  = true;
    size     = 3;
    passes   = 1;
    vibrancy = 0.1696;
  };
        
  active_opacity   = 1;
  inactive_opacity = 1;
    
  drop_shadow = true;
  shadow_range        = 7;
  shadow_render_power = 3;
 "col.shadow"         = "rgba(1a1a1aee)";
};
    
animations = {
  enabled   = true;
  bezier    = "myBezier, 0.05, 0.9, 0.1, 1.00";
  animation = [
   "windows, 1, 7, default, slide"
   "windowsOut, 1, 7, default, slide"
   "border, 1, 10, default"
   "borderangle, 1, 8, default"
   "fade, 1, 7, default"
  ];
};

};  
};
};
}

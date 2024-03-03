{ username, ... }:{
home-manager.users.${username} = {
wayland.windowManager.hyprland = {
settings  = {

exec-once = [ 
"swww init" 
"wallpaper" 
];

general = {
  gaps_in              = 5;
  gaps_out             = 10;
  border_size          = 0;
 "col.active_border"   = "rgb(504945)"; 
 "col.inactive_border" = "rgb(504945)";
};
    
decoration = {
  rounding = 10;
    
  blur = {
    enabled  = true;
    size     = 3;
    passes   = 1;
    vibrancy = 0.1696;
  };
    
  drop_shadow = false;
  shadow_range        = 7;
  shadow_render_power = 5;
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

{

wayland.windowManager.hyprland.settings = {

exec-once = [
  "kitty"
  "blueman-applet"
  "nm-applet"
  "soteria" # Polkit agent
  "telegram-desktop -startintray"
];

env = [
  "XCURSOR_SIZE,24" # unified cursor size
  "QT_QPA_PLATFORMTHEME, gtk3" # for telegram file manager

  "XDG_CURRENT_DESKTOP, Hyprland" # for display manager and other
  "XDG_SESSION_TYPE, wayland"
  "XDG_SESSION_DESKTOP, Hyprland"
];

input = {
  kb_layout    = "us,ru";
  kb_options   = "grp:caps_toggle";
  follow_mouse = 1;
  touchpad = {
    natural_scroll       = false;
    disable_while_typing = false;
  };
  sensitivity  = 0;
};

dwindle = {
  pseudotile     = true;
  preserve_split = true;
};
  
master = {
  new_status = "master";
};
  
gestures = {
  workspace_swipe        = true;
  workspace_swipe_invert = true;
};

misc = {
  disable_hyprland_qtutils_check = true;

  force_default_wallpaper = 0;
  background_color = "rgb(000000)";
  disable_hyprland_logo     = true;
  disable_splash_rendering  = true;

  layers_hog_keyboard_focus = true;
  animate_manual_resizes    = true;

  enable_swallow = true;
  swallow_regex  = "^(kitty)$";
  # swallow_regex  = "^(kitty|ripdrag)$";
  # swallow_exception_regex = "^(it.catboy.ripdrag)$"; # Broken
  swallow_exception_regex = "ripdrag";
};

general = {
  gaps_in     = 5;
  gaps_out    = 10;
  border_size = 0;
};

decoration = {
  rounding = 10;
  blur = {
    enabled  = true;
    size     = 3;
    passes   = 1;
    vibrancy = 0.1696;
  };
  shadow.enabled = false;
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

device = {
  name = "epic-mouse-v1";
  sensitivity = -0.5;
};

};

}

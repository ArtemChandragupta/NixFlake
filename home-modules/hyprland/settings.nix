{

wayland.windowManager.hyprland.settings = {

  input = {
    kb_layout    = "us,ru";
    kb_options   = "grp:caps_toggle";
    touchpad = {
      natural_scroll       = false;
      disable_while_typing = false;
    };
  };

  dwindle.preserve_split = true;

  gestures = {
    workspace_swipe        = true;
    workspace_swipe_invert = true;
  };

  misc = {
    force_default_wallpaper  = 0;
    disable_hyprland_logo    = true;
    disable_splash_rendering = true;

    animate_manual_resizes   = true;

    enable_swallow = true;
    swallow_regex  = "^(kitty)$";
  };

  general = {
    gaps_in     = 5;
    gaps_out    = 10;
    border_size = 0;
  };

  decoration = {
    rounding       = 10;
    rounding_power = 4;
    shadow.enabled = false;
    blur = {
      enabled  = true;
      size     = 3;
      passes   = 4;
      vibrancy = 0.1696;
    };
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

}

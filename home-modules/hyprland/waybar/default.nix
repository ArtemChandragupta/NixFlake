{ var, ... }:{

imports = [ ./${var.host} ];

programs.waybar = {
  enable = true;
  style  = ./${var.host}/style.css;
};

wayland.windowManager.hyprland.settings.exec-once = ["waybar"];

}

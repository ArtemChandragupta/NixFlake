{ var, ... }:{

imports = [ 
  ./modules.nix
];

programs.waybar = {
  enable = true;

  settings.mainBar = if var.host == "homePC" then {
    modules-left   = [ "hyprland/language" "tray" "hyprland/workspaces" ];
    modules-center = [ "clock" ];
    modules-right  = [ "cpu" "temperature" "memory" "pulseaudio#home" ];
  } else {
    modules-left   = [ "hyprland/language" "tray" "hyprland/workspaces" ];
    modules-center = [ "clock" ];
    modules-right  = [ "battery" "cpu" "temperature" "memory" "backlight" "pulseaudio" ];
  };

  style = ./style.css;
};

}

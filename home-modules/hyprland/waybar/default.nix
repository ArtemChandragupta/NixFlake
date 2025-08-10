{ var, ... }:{

imports = [ 
  ./modules.nix
];

programs.waybar = {
  enable = true;

  settings.mainBar = {
    modules-left   = [ "hyprland/language" "tray" "hyprland/workspaces" ];
    modules-center = [ "clock" ];
  };
  
  settings.mainBar.modules-right = if var.host == "homePC" then [ 
              "cpu" "temperature" "memory"             "pulseaudio#home" 
  ] else [ 
    "battery" "cpu" "temperature" "memory" "backlight" "pulseaudio" 
  ];

  style = ./style.css;
};

}

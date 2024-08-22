{

programs.waybar = {
  enable = true;
  style = builtins.readFile (./style.css);
  settings.mainBar = {

margin = "5px 10px -4px 10px";
layer  = "top";

modules-left   = [ "custom/flake" "tray" "hyprland/workspaces" ];
modules-center = [ "clock" ];
modules-right  = [ "battery" "cpu" "temperature" "memory" "backlight" "wireplumber" "pulseaudio" ];


"custom/flake" = {
  format   = " ";
  on-click = "wallpaperScript";
};

"tray" = {
  spacing = 8;
};

"hyprland/workspaces" = {
  active-only    = "false";
  on-scroll-up   = "hyprctl dispatch workspace e+1";
  on-scroll-down = "hyprctl dispatch workspace e-1";
  disable-scroll = "false";
  all-outputs = "true";
  format   = "{id}:{windows}";
  on-click = "activate";
  
  window-rewrite-default = "";
  window-rewrite = {
    "class<firefox>"  = "󰈹";
    "class<kitty>"    = "";
    "title<.*Yazi.*>" = "󰇥";
    "class<discord>"  = "";
    "class<obsidian>" = "";
    "class<nemo>"     = "";
    "class<totem>"    = "󱉺";
    "class<evince>"   = "󰈦";
    "class<haguichi>" = "";

    "class<org.gnome.Software>"   = "󱗼";
    "class<org.gnome.Loupe>"      = "";
    "class<org.gnome.Nautilus>"   = "󰪶";
    "class<org.gnome.Calculator>" = "";

    "class<org.telegram.desktop>"   = "";
    "class<transmission.gtk>"       = "";
    "class<com.usebottles.bottles>" = "󰡔󱌐";
    "class<com.saivert.pwvucontrol>"= "";
    "class<localsend_app>"          = "󱗿";
    "class<DesktopEditors>"         = "";
   };
};


"clock" = {
  tooltip-format = "<tt><small>{calendar}</small></tt>";
  format = "{:%H:%M}";
  calendar = {
    mode = "year";
    mode-mon-col = 3;
    on-scroll    = 1;
    format = {
      months = "<span color='#458588'><b>{}</b></span>";
      days   = "<span color='#989899'><b>{}</b></span>";
      weeks  = "<span color='#458588'><b>{}</b></span>";
      today  = "<span color='#cc241d'><b>{}</b></span>";
    };
  };
  on-click = "swaync-client -t -sw";
};


"battery" = {
  format = "{icon} {capacity}% {time}";
  format-time     = "{H}:{m}";
  tooltip-format  = "{timeTo} {capacity}%";
  format-charging = "󱐋 {capacity}% {time}";
  format-plugged  = " ";
  format-icons    = ["󰂎" "󰁻" "󰁾" "󰂀" "󰁹"];
};

"cpu" = {
  format  = " {usage}%";
};
"temperature" = {
  format = "󰔐 {temperatureC}°C";
  critical-threshold = 50;
};
"memory" = {
  format = " {}%";
};

"backlight" = {
  format = "{icon}{percent}%";
  format-icons   = ["󰃞 " "󰃟 " "󰃠 "];
};
"wireplumber" = {
  format = "{icon}{volume}%";
  format-icons = [" " " " " "];
  format-muted = " {volume}%";
  on-click = "pwvucontrol";
};
"pulseaudio" = {
  format = "{format_source}";
  format-source       = "󰍰";
  format-source-muted = "<span color='#cc241d'>󰍰</span>";
};

  };
};

}

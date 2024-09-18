{

programs.waybar = {
  enable = true;
  style = builtins.readFile (./style.css);
  settings.mainBar = {

margin = "5px 10px -4px 10px";
layer  = "top";

modules-left   = [ "custom/flake" "tray" "hyprland/workspaces" ];
modules-center = [ "clock" ];
modules-right  = [ "battery" "cpu" "temperature" "memory" "backlight" "pulseaudio" ];


"custom/flake" = {
  format   = " ";
  on-click = "wallpaperScript";
};

"tray" = {
  spacing = 8;
};

"hyprland/workspaces" = {
  on-scroll-up   = "hyprctl dispatch workspace e+1";
  on-scroll-down = "hyprctl dispatch workspace e-1";
  disable-scroll = "true";
  all-outputs = "true";
  format   = "{id}: {windows}";
  on-click = "activate";
  
  window-rewrite-default = "";
  window-rewrite = {
    "title<.*Yazi.*>" = "󰇥";
    "class<obsidian>" = "";
    "class<haguichi>" = "";
    "class<firefox>"  = "󰈹";
    "class<discord>"  = "";
    "class<evince>"   = "";
    "class<totem>"    = "󱉺";
    "class<kitty>"    = "";

    "class<org.gnome.Calculator>" = "";
    "class<org.gnome.Software>"   = "󱗼";
    "class<org.gnome.Nautilus>"   = "󰪶";
    "class<org.gnome.Loupe>"      = "";

    "class<com.moonlight_stream.Moonlight>"= "󰢹";
    "class<ONLYOFFICE Desktop Editors>"    = "";
    "class<Mendeley Reference Manager>"    = "";
    "class<com.saivert.pwvucontrol>"= "󰴸";
    "class<com.usebottles.bottles>" = "";
    "class<org.telegram.desktop>"   = "";
    "class<teams-for-linux>"  = "󰊻";
    "class<transmission.gtk>" = "";
    "class<dosbox-staging>"   = "󰚴";
    "class<localsend_app>"    = "󱗿";
    "class<virt-manager>"     = "";
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
  # format-icons    = ["󰂎" "󰁻" "󰁾" "󰂀" "󰁹"];
  format-icons    = [" " " " " " " " " "];
};

"cpu" = {
  format = " {usage}%";
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
"pulseaudio" = {
  format-icons = [" " " " " " ];
  format = "{icon}{volume}% {format_source}";
  format-muted = "<span color='#6D5930'> {volume}%</span> {format_source}";
  format-source = "";
  format-source-muted = "<span color='#6D5930'></span>";
  on-click = "pwvucontrol";
};

  };
};

}

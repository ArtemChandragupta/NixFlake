{

programs.waybar.settings.mainBar = {

  margin = "5px 10px -4px 10px";
  layer  = "top";

  modules-left   = [ "custom/flake" "tray" "hyprland/workspaces" ];
  modules-center = [ "clock" ];
  modules-right  = [ "battery" "cpu" "temperature" "memory" "backlight" "pulseaudio" ];


  "custom/flake" = {
    format   = " ";
    on-click = "focusCursor center | rofi-appgrid";
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
      "class<draw.io>"  = "󰕣";
      "class<firefox>"  = "󰈹";
      "class<discord>"  = "";
      "class<kitty>"    = "";

      "class<org.gnome.Software>"   = "󱗼";
      "class<org.gnome.Nautilus>"   = "󰪶";
      "class<org.gnome.Papers>"     = "";
      "class<org.gnome.Loupe>"      = "";

      "class<com.moonlight_stream.Moonlight>"= "󰢹";
      "class<com.github.rafostar.Clapper>"   = "󱉺";
      "class<ONLYOFFICE Desktop Editors>"    = "";
      "class<Mendeley Reference Manager>" = "";
      "class<de.haeckerfelix.Fragments>"  = "";
      "class<io.github.nokse22.Exhibit>"  = "󰐫";
      "class<com.saivert.pwvucontrol>"    = "󰴸";
      "class<com.usebottles.bottles>" = "";
      "class<page.kramo.Cartridges>"  = "";
      "class<org.cvfosammmm.Setzer>"  = "󱗆";
      "class<org.telegram.desktop>"   = "";
      "class<libreoffice-writer>"     = "";
      "class<org.pwmt.zathura>" = "";
      "class<teams-for-linux>"  = "󰊻";
      "class<dosbox-staging>"   = "󰚴";
      "class<localsend_app>"    = "󱗿";
      "class<virt-manager>" = "";
      "class<calculator>"   = "󰇃";
      "class<translator>"   = "󱁥";
      "class<Texmaker>" = "";
      "class<openscad>" = "";
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
    # format-icons    = [" " " " " " " " " "];
  };

  "cpu" = {
    format = " {usage}%";
    on-click = "open-resourceMonitor";
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
    on-click = "focusCursor center | pwvucontrol";
  };
};

}

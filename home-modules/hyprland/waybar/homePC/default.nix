{

programs.waybar.settings.mainBar = {

  margin = "5px 10px -4px 10px";
  layer  = "top";

  modules-left   = [ "custom/flake" "tray" "hyprland/workspaces" ];
  modules-center = [ "clock" ];
  modules-right  = [ "cpu" "temperature" "memory" "pulseaudio" ];


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

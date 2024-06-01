{

imports = [ ./style.nix ];

programs.waybar.settings.mainBar = {
  margin = "0px 0px -10px 0px";
  layer = "top";

  modules-left   = ["custom/wmname" "tray" "hyprland/workspaces"];
  modules-center = ["clock"];
  modules-right  = ["battery" "cpu" "temperature" "memory" "backlight" "pulseaudio" ];

  "hyprland/workspaces" = {
    active-only = "false";
    on-scroll-up = "hyprctl dispatch workspace e+1";
    on-scroll-down = "hyprctl dispatch workspace e-1";
    disable-scroll = "false";
    all-outputs = "true";
    format = "{id}:{windows}";
    window-rewrite-default = "";
    window-rewrite = {
      "class<firefox>" = "󰈹";
      "class<kitty>" = "";
      "title<.*Yazi.*>" = "󰇥";
      "class<discord>" = "";
      "class<obsidian>" = "";
      "class<org.gnome.Calculator>" = "";
      "class<org.telegram.desktop>" = "";
      "class<transmission.gtk>" = "";
      "class<nemo>" = "";
      "class<com.usebottles.bottles>" = "󰡔󱌐";
      "class<localsend_app>" = "󱗿";
    };
    on-click = "activate";
  };

  "tray" = {
    spacing = 8;
  };

  "clock" = {
    tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    format = " {:%H:%M}";
    format-alt = " {:%A, %B %d, %Y}";
  };

  "cpu" = {
    format = " {usage}%";
    tooltip = "false";
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
    format-icons = ["󰃞 " "󰃟 " "󰃠 "];
    on-scroll-up = "light -A 1";
    on-scroll-down = "light -U 1";
  };

  "battery" = {
    states = {
      warning = "30";
      critical = "15";
    };
    format = "{icon} {capacity}% {time}";
    tooltip-format = "{timeTo} {capacity}%";
    format-charging = "󱐋{capacity}%";
    format-plugged = " ";
    format-icons = ["󰂎" "󰁻" "󰁾" "󰂀" "󰁹"];
  };

  "pulseaudio" = {
    format = "{icon}{volume}% {format_source}";
    format-bluetooth = "{icon} {volume}%";
    format-bluetooth-muted = "   {volume}%";
    format-source = "";
    format-source-muted = "";
    format-muted = " {volume}% {format_source}";
    format-icons = {
      headphone = " ";
      default = [" " " " " "];
    };
    tooltip-format = "{desc} {volume}%";
    on-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
    on-click-right = "pactl set-source-mute @DEFAULT_SOURCE@ toggle";
    on-click-middle = "pavucontrol";
  };

  "custom/wmname" = {
    format = " ";
    tooltip = "false";
    on-click = "wallpaper";
    on-click-right = "screenshot";
    on-click-middle = "wallpaper-switch";
  };
};

}

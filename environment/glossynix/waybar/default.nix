{ var, ... }:{
home-manager.users.${var.username} = {
programs.waybar = {
  enable = true;
  style = '' 
* {
    border: none;
    font-family: JetBrainsMono Nerd Font, sans-serif;
    font-size: 14px;
  }

  window#waybar {
    color: #98971a;
    background-color: rgba(40, 40, 40, 0);
  }

  window#waybar.hidden {
    opacity: 0.2;
  }

  window#hyprland-window {
    border: 2px solid #d79921;
  }

  #workspaces,
  #mode,
  #window,
  #cpu,
  #memory,
  #temperature,
  #custom-wmname,
  #clock,
  #pulseaudio,
  #backlight,
  #battery,
  #tray {
    background-color: rgba(40, 40, 40, 1);
    padding: 0 10px;
    color: #d79921;
    margin: 5px 4px 6px 4px;
    border: none;
    border-radius: 12px;
    background-clip: padding-box;
  }

  #workspaces {
    background-color: rgba(40, 40, 40, 1);
    padding: 4px 4px;
    margin: 5px 4px 6px 4px;
  }

  #workspaces button {
    min-width: 20px;
    color: #83a598;
    padding: 0 10px;
    margin: 0px 4px;
  }

  #workspaces button:hover {
    background-color: rgba(31, 31, 45, 0.5)
  }

  #workspaces button.active {
    color: rgba(40, 40, 40, 1);
    color: #d79921;
  }

  #workspaces button.urgent {
    color: #cc241d;
  }

  #cpu {
    padding: 0 10px;
    color: #83a589;
    border-right: none;
    border-radius: 12px 0px 0px 12px;
    margin: 5px -2px 6px 4px;          
  }

  #memory {
    padding: 0 10px;
    color: #83a589;
    border-left: none;
    border-radius: 0px 12px 12px 0px;
    margin: 5px 4px 6px -2px;
  }

  #temperature {
    padding: 0 10px;
    color: #83a589;
    margin: 5px -2px 6px -2px;
    border-right: none;
    border-left: none;
    border-radius: 0px 0px 0px 0px;
  }

  #temperature.critical {
    padding: 0 10px;
    color: #cc241d;
    margin: 5px -2px 6px -2px;
    border-right: none;
    border-left: none;
    border-radius: 0px 0px 0px 0px;
  }

  #clock {
    padding: 0 10px;
    color: #b16286;
  }

  #pulseaudio {
    padding: 0 10px;
    color: #d79921;
    border-left: none;
    border-radius: 0px 12px 12px 0px;
    margin: 5px 10px 6px -2px;
  }

  #pulseaudio.muted {
    padding: 0 10px;
    color: #cc241d;
    border-left: none;
    border-radius: 0px 12px 12px 0px;
  }

  #backlight {
    padding: 0 10px;
    color: #d79921;
    border-right: none;
    border-radius: 12px 0px 0px 12px;
    margin: 5px -2px 6px 4px;
  }

  #battery {
    padding: 0 10px;
    color: #b8bb26;
  }

  #battery.charging, #battery.plugged {
    padding: 0 10px;
    background-color: #b8bb26;
    color: rgba(40, 40, 40, 1);
  }

  #custom-wmname {
    color: #98971a;
    background-color: rgba(40, 40, 40, 1);
    font-size: 23px;
    padding: 1px 1px 1px 5px;
    margin: 5px 4px 6px 10px;
  }
'';

settings = {
  mainBar = {
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
  };
};

};  
}

{ config, lib, pkgs, ... }: {
programs.waybar = {
  enable = true;
  style = ''

body,
#waybar,
.main-container {
  font-family: Iosevka, Material Design Icons Desktop;
  background-color: rgba(29, 32, 33, 1);
  color: @text;
  transition: background-color 0.5s ease-in-out;
  border: 2px solid rgba(00, 00, 00, 0.8);
  border-radius: 5px;
}

#waybar:hover,
.main-container:hover {
  background-color: rgba(0, 0, 0, 0.9);
}

#backlight,
#battery,
#workspaces,
#custom-rofi,
#custom-color_toggle,
#clock,
#pulseaudio,
#network,
#bluetooth.on,
#bluetooth.connected,
#network.wifi {
  border-width: 0;
}

window#waybar.hidden {
  opacity: 0.2;
}

#workspaces {
  background: transparent;
  font-weight: bold;
  font-style: normal;
  opacity: 0.8;
  font-size: 16px;
  color: rgba(251, 241, 199, 1);
}
#workspaces button {
  color: @color7;
  background: transparent;
  transition: all 0.3s ease-in-out;
  opacity: 0.4;
}

#workspaces button.active {
  background-color: @color11;
  opacity: 0.9;
  margin: 8px;
  border-radius: 5px;
  color: rgba(251, 241, 199, 1);
}
#workspaces button:hover {
  opacity: 0.8;
  margin-right: 4px;
  margin-left: 4px;
  color: rgba(251, 241, 199, 1);
}


#clock,
#pulseaudio,
#network,
#bluetooth.on,
#bluetooth.connected {
  background-color: transparent;
  font-size: 16px;
  opacity: 0.8;
  padding: 0px;
  font-size: 14px;
  color: rgba(251, 241, 199, 1);
}

#pulseaudio.muted {
  background-color: @color11;
  color: rgba(251, 241, 199, 1);
}

#bluetooth.off {
  background-color: @color5;
  color: rgba(251, 241, 199, 1);
}

#pulseaudio {
  padding-right: 0px;
  color: rgba(251, 241, 199, 1);
}

#battery {
margin-top: 10px;
 padding-right: 0px;
 color: rgba(251, 241, 199, 1);
}

#backlight {
color: rgba(251, 241, 199, 1);
}

#network {
  padding-right: 0px;
  color: rgba(251, 241, 199, 1);
}

#clock {
  margin-bottom: 20px;
  font-size: 14px;
  color: rgba(251, 241, 199, 1);
}
'';

settings = {
  mainBar = {

    "layer" = "top";
    "position" = "right";
    "margin" = "5 5 5 0";
    "width" = 52;
    "modules-left" = ["battery"];
    "modules-center" = ["hyprland/workspaces"];
    "modules-right" = ["bluetooth" "pulseaudio" "pulseaudio#audio" "network" "backlight" "clock"];
    "spacing" = 10;
    "hyprland/workspaces" = {
        "active-only" = false;
        "all-outputs" = false;
        "format" = "{}";
        "on-click" = "activate";
        "persistent-workspaces" = {
            "1" = [];
            "2" = [];
            "3" = [];
            "4" = [];
            "5" = [];
        };
      };

    "clock" = {
    "interval"= 1;
    "format" = "{:󰥔\n%I\n%M\n%p\n󰣆\n%d\n%m\n%y}";
    "tooltip" = true;
    "tooltip-format" = "{calendar}";
    "calendar" = {
      "mode" = "year";
      "mode-mon-col" = 3;
      "format" = {
        "today" = "<span color='#0dbc79'>{}</span>";
      };
    };
  };

    "pulseaudio" = {
        "scroll-step" = 0.5;
        "format" = "{icon}";
        "format-muted" = "";
        "format-source" = "{volume}% ";
        "format-source-muted" = "";
        "format-icons" = {
            "headphone" = "󰋋";
            "hands-free" = "󰋋";
            "headset" = "󰋋";
            "default" = ["󰕿" "󰖀" "󰕾 "];
        };
        "on-click"= "pavucontrol";
        "tooltip" = false;
    };

    "backlight" = {
    "format" = "{icon}";
    "format-icons" = [
      "󰃟"
    ];
    "on-scroll-up" = "brightnessctl set +5%";
    "on-scroll-down" = "brightnessctl set 5%-";
    "on-click" = "";
    "tooltip" = true;
    "tooltip-format" = "{percent}%";
  };

    "bluetooth" = {
        "format" = "{icon}";
        "format-disabled" = "";
        "format-off" = "";
        "interval" = 30;
        "on-click" = "blueman-manager";
        "tooltip" = false;
    };
    "network" = {
        "format" = "{ifname}";
        "format-wifi" = "󰤨";
        "format-disconnected" = "󰤮";
        "on-click"= "nmtui";
        "tooltip" = false;
    };

     "battery" = {
    "states" = {
      "warning" = 30;
      "critical" = 15;
    };
    "format" = "{icon}{capacity}%";
    "format-charging" = "󰂄 {capacity}%";
    "format-plugged" = "󱘖 {capacity}%";
    "format-icons" = [
      "󰁺"
      "󰁻"
      "󰁼"
      "󰁽"
      "󰁾"
      "󰁿"
      "󰂀"
      "󰂁"
      "󰂂"
      "󰁹"
    ];
    "on-click" = "";
    "tooltip" = false;
  };
  };
};
};
}

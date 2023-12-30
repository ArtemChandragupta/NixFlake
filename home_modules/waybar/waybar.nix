{config, pkgs, ...}: {
  programs.waybar = {
    enable = true;
    style = '' 
           
          @define-color background #282828;
          @define-color foreground #ebdbb2;
          @define-color alt_background #1d2021;

          @define-color black #32344a;
          @define-color red #cc241d;
          @define-color green #98971a;
          @define-color yellow #d79921;
          @define-color blue #458588;
          @define-color magenta #b16286;
          @define-color cyan #689d6a;
          @define-color white #ebdbb2;

          @define-color alt_black #414868;
          @define-color alt_red #fb4934;
          @define-color alt_green #b8bb26;
          @define-color alt_blue #83a598;
          @define-color alt_yellow #fabd2f;
          @define-color alt_magenta #d3869b;
          @define-color alt_cyan #8ec07c;
          @define-color alt_white #fbf1c7;
          

        * {

          border: none;
          font-family: JetBrainsMono Nerd Font, sans-serif;
          font-size: 14px;
        }

        window#waybar {
          background-color: @background;
          border-radius: 0px;
          border: 0px solid rgb(213, 196, 161);
          color: @alt_green;
          opacity: 1;
          transition-property: background-color;
          transition-duration: .5s;
          margin-bottom: 0px;
        }

        window#waybar.hidden {
          opacity: 0.2;
        }

        window#hyprland-window {
          background-color: @background;
        }

        #workspaces,
        #mode,
        #window,
        #cpu,
        #memory,
        #temperature,
        #custom-media,
        #custom-wmname,
        #clock,
        #idle_inhibitor,
        #pulseaudio,
        #backlight,
        #battery,
        #network,
        #tray {
          background-color: @background;
          padding: 0 10px;
          margin: 5px 2px 5px 2px;
          border: 0px solid rgb(0, 0, 0);
          border-radius: 0px;
          background-clip: padding-box;
        }

        #workspaces button {
          background-color: @alt_background;
          padding: 0 5px;
          min-width: 20px;
          color: @foreground;
        }

        #workspaces button:hover {
          background-color: rgba(31, 31, 45, 0.5)
        }

        #workspaces button.active {
          color: @blue;
        }

        #workspaces button.urgent {
          color: @red;
        }

        #cpu {
          padding: 0 10px;
          color: @cyan;
        }

        #memory {
          padding: 0 10px;
          color: @cyan;
        }

        #temperature {
          padding: 0 10px;
          color: @cyan;
        }

        #temperature.critical {
          background-color: @red;
          padding: 0 10px;
          color: @background;
        }

        #custom-media {
          color: #c678dd;
          padding: 0 10px;
          color: @background;
        }

        #clock {
          padding: 0 10px;
          color: @blue;
        }

        #idle_inhibitor {
          padding: 0 10px;
          color: @foreground;
        }

        #pulseaudio {
          padding: 0 10px;
          color: @yellow;
        }

        #pulseaudio.muted {
          padding: 0 10px;
          color: @red;
        }

        #backlight {
          padding: 0 10px;
          color: @yellow;
        }

        #battery {
          padding: 0 10px;
          color: @alt_green;
        }

        #battery.charging, #battery.plugged {
          padding: 0 10px;
          background-color: @alt_green;
          color: @background;
        }

        @keyframes blink {
            to {
                background-color: @background;
                color: @red;
            }
        }

        #battery.critical:not(.charging) {
            padding: 0 10px;
            background-color: @red;
            color: @background;
            animation-name: blink;
            animation-duration: 0.5s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
            animation-direction: alternate;
        }

        #network {
            padding: 0 10px;
            color: @blue;
        }

        #custom-wmname {
            color: @blue;
            background-color: @background;
            font-size: 25px;
            margin: 1px;
            padding: 1px 1px 1px 5px;
        }

        #network.disconnected {
            padding: 0 10px;
            color: @red;
        }
    '';
    settings = {
      mainBar = {
        margin = "2px 2px 0px 2px";
        layer = "top";

        modules-left = ["hyprland/workspaces" "hyprland/window"];
        modules-center = ["custom/wmname"];
        modules-right = ["battery" "clock" "cpu" "temperature" "memory" "backlight" "pulseaudio" "network" "tray"];

      /* Modules configuration */
      "hyprland/workspaces" = {
          active-only = "false";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          disable-scroll = "false";
          all-outputs = "true";
          format = "{icon}";
          on-click = "activate";
          format-icons = {
              "1" = " ";
              "2" = " ";
              "3" = "";
              "4" = " ";
              "5" = " ";
              "6" = " ";
              "7" = " ";
              "8" = " ";
              "9" = " ";
              "10" = "󰊴 ";
            };
          };

        "idle_inhibitor" = {
          format = "{icon}";
          format-icons = {
            activated = " ";
            deactivated = " ";
          };
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
          format = " {temperatureC}°C";
          format-icons = [ "" "" "" ];
        };

        "memory" = {
          format = " {}%";
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
          format = "{icon}{capacity}% {time}";
          tooltip-format = "{timeTo} {capacity}%";
          format-charging = "󱐋{capacity}%";
          format-plugged = " ";
          format-icons = ["  " "  " "  " "  " "  "];
        };
        
        "network" = {
          format-wifi = " {essid}";
          format-ethernet = "{ifname}: {ipaddr}/{cidr}  ";
          format-linked = "{ifname} (No IP)  ";
          format-disconnected = "󰤮 Disconnected";
          on-click = "wifi-menu";
          tooltip-format = "{essid} {signalStrength}%";
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
              hands-free = " ";
              headset = " ";
              phone = " ";
              portable = " ";
              car = " ";
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
          on-click = "$HOME/.config/rofi/launchers/type-1/launcher.sh";
          on-click-right = "screenshot";
          on-click-middle = "wallpaper-switch";
        };
      };
    };
  };
}


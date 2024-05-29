{ username, ...}:{
home-manager.users.${username} = {

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
          border: 2px solid rgb(213, 196, 161);
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
        #custom-wmname,
        #clock,
        #pulseaudio,
        #backlight,
        #battery,
        #tray {
          background-color: @background;
          padding: 0 10px;
          margin: 5px 2px 5px 2px;
          border: 0px solid rgb(0, 0, 0);
          border-radius: 0px;
          background-clip: padding-box;
        }

        #workspaces button {
          padding: 0 5px;
          min-width: 20px;
          color: @blue;
        }

        #workspaces button:hover {
          background-color: rgba(31, 31, 45, 0.5)
        }

        #workspaces button.active {
          color: @foreground;
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

        #clock {
          padding: 0 10px;
          color: @blue;
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

        #custom-wmname {
          color: @blue;
          background-color: @background;
          font-size: 25px;
          margin: 2px;
          padding: 1px 1px 1px 5px;
        }
    '';
    
    settings = {
      mainBar = {
        margin = "0px 0px -2px 0px";
        layer = "top";

        modules-left   = ["custom/wmname" "tray" "hyprland/workspaces"];
        modules-center = ["clock"];
        modules-right  = ["battery" "cpu" "temperature" "memory" "backlight" "pulseaudio"];

        "hyprland/workspaces" = {
          active-only = "false";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          disable-scroll = "false";
          all-outputs = "true";
          format = "{name}";
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

};
}

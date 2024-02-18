{
home-manager.users.artem = {
programs.waybar = {
  enable = true;
  style = '' 

            @define-color background rgba(40, 40, 40, 1);
            @define-color black #32344a;
            @define-color white rgb(235, 219, 178);
            
      * {
          border: none;
          font-family: JetBrainsMono Nerd Font, sans-serif;
          font-size: 14px;
        }

        window#waybar {
          background-color: rgba(28, 28, 28, 0.4);
        }

        window#waybar.hidden {
          opacity: 0.2;
        }

        window#hyprland-window {
          border: 2px solid @yellow;
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
          padding: 0 10px;
          color: @white;
          margin: 5px 4px 6px 4px;
          border: none;
          border-radius: 12px;
          background-clip: padding-box;
        }

        #workspaces {
          padding: 4px 4px;
          margin: 5px 4px 6px 4px;
        }

        #workspaces button {
          min-width: 20px;
          padding: 0 10px;
          margin: 0px 4px;
        }

        #workspaces button:hover {
          background-color: rgba(31, 31, 45, 0.5)
        }

        #workspaces button.active {
          color: @white;         
        }

        #workspaces button.urgent {
          color: #cc241d;;
        }

        #cpu {
          padding: 0 10px;
          color: @white;
          border-right: none;
          border-radius: 12px 0px 0px 12px;
          margin: 5px -2px 6px 4px;          
        }

        #memory {
          padding: 0 10px;
          border-left: none;
          border-radius: 0px 12px 12px 0px;
          margin: 5px 4px 6px -2px;
        }

        #temperature {
          padding: 0 10px;
          margin: 5px -2px 6px -2px;
          border-right: none;
          border-left: none;
          border-radius: 0px 0px 0px 0px;
        }

        #clock {
          padding: 0 10px;
        }

        #pulseaudio {
          padding: 0 10px;
          border-left: none;
          border-radius: 0px 12px 12px 0px;
          margin: 5px 10px 6px -2px;
        }

        #pulseaudio.muted {
          padding: 0 10px;
          border-left: none;
          border-radius: 0px 12px 12px 0px;
        }

        #backlight {
          padding: 0 10px;
          border-right: none;
          border-radius: 12px 0px 0px 12px;
          margin: 5px -2px 6px 4px;
        }

        #battery {
          padding: 0 10px;
        }

        #battery.charging, #battery.plugged {
          padding: 0 10px;
        }

        @keyframes blink {
          to {
            background-color: @background;
          }
        }

        #battery.charging, #battery.plugged {
          padding: 0 10px;
          color: @background;          
        }

        #custom-wmname {
          color: @white;
          font-size: 23px;
          padding: 1px 1px 1px 5px;
          margin: 5px 4px 6px 10px;
        }
    '';
    
    settings = {
      mainBar = {
        margin = "0px 0px 0px 0px";
        layer = "top";

        modules-left   = ["custom/wmname" "tray" "hyprland/workspaces"];
        modules-center = ["clock"];
        modules-right  = ["battery" "cpu" "temperature" "memory" "backlight" "pulseaudio" ];

        /* Modules configuration */
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
          on-click = "wallpaper";
        };
      };
    };
  };

};  
}

{

programs.waybar.style = '' 
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

}

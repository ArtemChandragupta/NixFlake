{ pkgs, ... }:

let
swayncConfig = {
  "$schema" = "${pkgs.swaynotificationcenter}/etc/xdg/swaync/configSchema.json";
  positionX = "center";
  positionY = "top";
  control-center-margin-top    = 10;
  control-center-margin-bottom = 10;
  control-center-margin-right  = 10;
  control-center-margin-left   = 10;
  widgets = [
    "buttons-grid"
    "dnd"
    "title"
    "notifications"
  ];
  widget-config = {
    buttons-grid.actions = [
      { label = "󰐥"; command = "systemctl poweroff"; }
      { label = "󰑐"; command = "systemctl reboot";   }
      { label = "󰌿"; command = "hyprlock";           }
    ];
    dnd = {
      text = "Do not disturb";
    };
    title = {
      text = "Notifications";
      clear-all-button = true;
      button-text = "󰆴";
    };    
  };
}; 
in {

home = {
  packages = [ pkgs.swaynotificationcenter ];
  file = {
    ".config/swaync/config.json".text = builtins.toJSON swayncConfig;
    ".config/swaync/style.css".source = ./style.css;
  };
};

wayland.windowManager.hyprland.settings = {
  exec-once = [ "swaync" ];
  layerrule = [
  "animation slide top, swaync-control-center"
  "animation slide top, swaync-notification-window"
  ];
};

}

{

services.swaync = {
  enable = true;
  style  = ./style.css;
  settings = {
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
};

wayland.windowManager.hyprland.settings = {
  layerrule = [
    "match:class swaync-control-center,      animation slide top"
    "match:class swaync-notification-window, animation slide top"
  ];
};

}

{ pkgs, ... }:{
  home.file.".config/swaync/config.json" = let
    swayncConfig = {
      "$schema" = "${pkgs.swaynotificationcenter}/etc/xdg/swaync/configSchema.json";
      positionX = "true";
      positionY = "top";
      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      control-center-margin-right = 10;
      control-center-margin-left = 10;
      widgets = [
        "dnd"
        "mpris"
        "buttons-grid"
        "title"
        "notifications"
      ];
      widget-config = {
        title = {
          text = "Notifications";
          clear-all-buttin = true;
          button-text = "clear";
        };
        dnd = {
          text = "Do not disturb";
        };
        buttons-grid = {
          actions = [
            {
              label = "󰐥";
              command = "systemctl poweroff";
            }
            {
              label = "󰜉";
              command = "systemctl reboot";
            }
            {
              label = "󰶐";
              command = "hyprlock";
            }
          ];
        };
      };
    };
  in {
    text = builtins.toJSON swayncConfig;
    onChange = "${pkgs.swaynotificationcenter}/bin/swaync-client --reload-config";
  };
}

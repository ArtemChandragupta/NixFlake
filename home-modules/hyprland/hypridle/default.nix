{ inputs, ... }:{

  imports = [
    inputs.hypridle.homeManagerModules.default
  ];

  services.hypridle = {
    enable = true;
    lockCmd = "pidof hyprlock || hyprlock";
    beforeSleepCmd = "loginctl lock-session";
    afterSleepCmd = "hyprctl dispatch dpms on";

    listeners = [
      {
        timeout = 150;
        onTimeout = "brightnessctl -s set 10";
        onResume = "brightnessctl -r";
      }

      {
        timeout = 300;
        onTimeout = "loginctl lock-session";
      }

      {
        timeout = 380;
        onTimeout = "hyprctl dispatch dpms off";
        onResume = "hyprctl dispatch dpms on";
      }

      {
        timeout = 1800;
        onTimeout = "systemctl suspend";
      }

  ];
  };
}

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
        timeout = 300;
        onTimeout = "brightnessctl -s set 10";
        onResume = "brightnessctl -r";
      }

      {
        timeout = 600;
        onTimeout = "loginctl lock-session";
      }

      {
        timeout = 1800;
        onTimeout = "systemctl suspend";
      }
    ];
  };
}

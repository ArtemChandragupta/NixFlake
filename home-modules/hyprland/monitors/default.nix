{ pkgs, var, ... }:
let
  rotateMonitorScript = pkgs.writers.writeNuBin "rotateMonitorScript"
    (builtins.readFile ./rotateMonitorScript.nu);
in{

home.packages = [ rotateMonitorScript ];

wayland.windowManager.hyprland.settings = {
  monitor = if var.host == "ThinkBook13s" then [
    {
      output   = "eDP-1";
      mode     = "1920x1200";
      position = "0x0";
      scale    = "1";
    }
    {
      output   = "HDMI-A-1";
      mode     = "1920x1080";
      position = "0x1600";
      scale    = "1";
    }
  ] else if var.host == "homePC" then [
    {
      output   = "HDMI-A-1";
      mode     = "1920x1080@120";
      position = "0x0";
      scale    = "1";
    }
  ] else [ ];
};

}

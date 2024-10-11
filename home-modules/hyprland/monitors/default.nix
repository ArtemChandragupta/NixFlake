{ pkgs, var, ... }:
let
  rotateMonitorScript = pkgs.writers.writeNuBin "rotateMonitorScript"
    (builtins.readFile ./rotateMonitorScript.nu);
in{

home.packages = [rotateMonitorScript];

wayland.windowManager.hyprland.settings = {

  monitor = if var.host == "ThinkBook13s" then [
    "eDP-1,1920x1200, 0x0, 1"
    "HDMI-A-1,1920x1080, 0x1600, 1"
  ] else if var.host == "homePC" then [
    "HDMI-A-1,1920x1080@144, 0x0, 1"
  ] else [ ];
  
  bind = [
    "$mainMod SHIFT, up,   movecurrentworkspacetomonitor, HDMI-A-1"
    "$mainMod SHIFT, down, movecurrentworkspacetomonitor, eDP-1"

    "$mainMod SHIFT, right, exec, rotateMonitorScript 1"
    "$mainMod SHIFT, left,  exec, rotateMonitorScript 3"
  ];
};

}

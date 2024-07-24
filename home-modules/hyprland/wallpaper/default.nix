{ pkgs, ... }:
let
  wallpaperScript = pkgs.writers.writeNuBin "wallpaperScript"
    (builtins.readFile ./wallpaperScript.nu);
in{

home.packages = [
  pkgs.swww
  pkgs.wlr-randr
  
  wallpaperScript
];

wayland.windowManager.hyprland.settings.exec-once = [
  "swww init"
];

}

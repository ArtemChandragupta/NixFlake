{ pkgs, ... }:
let
  recolor-border = pkgs.writers.writeNuBin "recolor-border" (builtins.readFile ./recolor-border.nu);
in{

home.packages = [ recolor-border ];

wayland.windowManager.hyprland.settings.exec-once = [
  "waybar"
  "recolor-border"
  "kitty"
  "Telegram -startintray"
];

}

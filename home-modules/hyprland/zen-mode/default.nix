{ pkgs, ... }:
let
  zen-mode = pkgs.writers.writeNuBin "zen-mode"
    (builtins.readFile ./zen-mode.nu);
in{

home.packages = [
  zen-mode
];

wayland.windowManager.hyprland.settings.bind = [
  "$mainMod SHIFT, R, exec, zen-mode"
];

}

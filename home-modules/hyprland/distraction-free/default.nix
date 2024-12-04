{ pkgs, ... }:
let
  distractionFree = pkgs.writers.writeNuBin "distractionFree"
    (builtins.readFile ./distractionFree.nu);
in{

home.packages = [
  distractionFree
];

wayland.windowManager.hyprland.settings.bind = [
  "$mainMod SHIFT, R, exec, distractionFree"
];

}

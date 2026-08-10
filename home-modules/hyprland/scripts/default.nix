{ pkgs, ... }:
let
  recolor-border = pkgs.writers.writeNuBin "recolor-border"
    (builtins.readFile ./recolor-border.nu);
  rotateMonitorScript = pkgs.writers.writeNuBin "rotateMonitorScript"
    (builtins.readFile ./rotateMonitorScript.nu);
  wallpaperScript = pkgs.writers.writeNuBin "wallpaperScript"
    (builtins.readFile ./wallpaperScript.nu);
  zen-mode = pkgs.writers.writeNuBin "zen-mode"
    (builtins.readFile ./zen-mode.nu);
in{

home.packages = [
  recolor-border
  rotateMonitorScript
  wallpaperScript
  zen-mode
];

}

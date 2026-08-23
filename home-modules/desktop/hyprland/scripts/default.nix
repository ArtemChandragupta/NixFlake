{ pkgs, ... }:
let
  recorderScript = pkgs.writers.writeNuBin "recorderScript"
    (builtins.readFile ./recorderScript.nu);
  screenshotScript = pkgs.writers.writeNuBin "screenshotScript"
    (builtins.readFile ./screenshotScript.nu);
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
  recorderScript
  screenshotScript
  recolor-border
  rotateMonitorScript
  wallpaperScript
  zen-mode
];

}

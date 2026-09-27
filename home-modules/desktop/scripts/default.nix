{ pkgs, ... }:
let
  recorderScript = pkgs.writers.writeNuBin "recorderScript"
    (builtins.readFile ./recorderScript.nu);
  screenshotScript = pkgs.writers.writeNuBin "screenshotScript"
    (builtins.readFile ./screenshotScript.nu);
  wallpaperScript = pkgs.writers.writeNuBin "wallpaperScript"
    (builtins.readFile ./wallpaperScript.nu);
in{

home.packages = [
  recorderScript
  screenshotScript
  wallpaperScript
];

}

{ pkgs, ... }:
let
  wallpaperScript = pkgs.writers.writeNuBin "wallpaperScript"
    (builtins.readFile ./wallpaperScript.nu);
in{

imports = [ ./fetchWlppr.nix ];

home.packages = [
  pkgs.swww  
  wallpaperScript
];

}

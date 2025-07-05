{ pkgs, var, ... }:
let
  wallpaperScript = pkgs.writers.writeNuBin "wallpaperScript"
    (builtins.readFile ./wallpaperScript.nu);
in{

imports = if !var.init 
  then [ ./fetchWlppr.nix ]
  else [ ];

home.packages = [
  pkgs.swww  
  wallpaperScript
];

}

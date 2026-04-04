{ pkgs, ... }:
let
  wallpaperScript = pkgs.writers.writeNuBin "wallpaperScript"
    (builtins.readFile ./wallpaperScript.nu);
in{

imports = [ ./fetchWlppr.nix ];

services.awww.enable = true;

home.packages = [ wallpaperScript ];

}

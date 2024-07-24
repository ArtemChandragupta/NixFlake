{ pkgs, ... }:
let
  wallpaperNu = pkgs.writers.writeNuBin "wallpaperNu" 
    (builtins.readFile ./wallpaper.nu);
in{

home.packages = [wallpaperNu];

}


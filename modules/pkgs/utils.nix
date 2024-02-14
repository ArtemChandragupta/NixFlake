{ pkgs, config, lib, ... }:
let 
  wallpaper = import ./wallpaper.nix { inherit pkgs; };
in
{
environment.systemPackages = with pkgs; [

wget 
git
zip
rar 
gnutar
brightnessctl
wallpaper

];
}

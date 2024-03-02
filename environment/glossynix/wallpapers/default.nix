{ pkgs, ... }:
let 
  wallpaper = import ./wallpaper.nix { inherit pkgs; };
in
{
environment.systemPackages = with pkgs; [
wallpaper
];
}

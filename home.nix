{ config, pkgs, ... }:
{
  home = {
    username = "artem";
    homeDirectory = "/home/artem";
    stateVersion = "23.11";

    packages = [];

    file = {};

  };

  programs = { 
    home-manager.enable = true;
  };

  imports = [
    ./home_modules/hyprland/hyprland.nix
    ./home_modules/lf/lf.nix
    ./home_modules/btop/btop.nix
    ./home_modules/kitty/kitty.nix
    ./home_modules/waybar/waybar.nix
    ./home_modules/zathura/zathura.nix
    ./home_modules/dunst/dunst.nix
    ./home_modules/dconf/dconf.nix
    ./home_modules/gtk/gtk.nix #qt also
  ];

  xdg.mimeApps.defaultApplications = {
    "application/pdf" = [ "zathura.desktop" ];
    "image/*" = [ "viewnior.desktop" ];
    "video/png" = [ "mpv.desktop" ];
    "video/jpg" = [ "mpv.desktop" ];
    "video/*" = [ "mpv.desktop" ];
  };      
}

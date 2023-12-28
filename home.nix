{ config, pkgs, ... }:
{
  home = {
    username = "artem";
    homeDirectory = "/home/artem";
    stateVersion = "23.11";

    packages = [
    
    ];

    file = {};

    sessionVariables = {
      EDITOR = "nano";
    };

  };

  programs = { 
    home-manager.enable = true;
  };

  imports = [
    ./hm/hyprland/hyprland.nix
    ./hm/lf/lf.nix
    ./hm/btop/btop.nix
    ./hm/kitty/kitty.nix
    ./hm/waybar/waybar.nix
    ./hm/zathura/zathura.nix
    ./hm/dunst/dunst.nix
    ./hm/dconf/dconf.nix
  ];

  gtk = {
    enable = true;
    theme = {
      name = "Gruvbox-Dark-BL";
      package = pkgs.gruvbox-gtk-theme;
    };
    iconTheme = {
      name = "Mint-Y-Sand";
      package = pkgs.cinnamon.mint-y-icons;
    };
    cursorTheme = {
      name = "Bibata-Original-Classic";
      package = pkgs.bibata-cursors;
    };
  };

  xdg.mimeApps.defaultApplications = {
    "application/pdf" = [ "zathura.desktop" ];
    "image/*" = [ "viewnior.desktop" ];
    "video/png" = [ "mpv.desktop" ];
    "video/jpg" = [ "mpv.desktop" ];
    "video/*" = [ "mpv.desktop" ];
  };      
}

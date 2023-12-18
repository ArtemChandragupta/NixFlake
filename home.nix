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
   # btop = {
    #  enable = true;
     # settings = {
      #  color_theme = "gruvbox_dark_v2";
     # };
   # };
  };

  imports = [
    ./hm/hyprland/hyprland.nix
    ./hm/lf/lf.nix
    ./hm/btop/btop.nix
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
}

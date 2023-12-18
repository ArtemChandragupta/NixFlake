{ config, pkgs, ... }:
{
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "gruvbox_dark_v2";
    };
  };
}

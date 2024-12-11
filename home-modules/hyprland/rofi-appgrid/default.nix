{ pkgs, ... }:
let
  rofi-appgrid = pkgs.writers.writeNuBin "rofi-appgrid"
    (builtins.readFile ./rofi-appgrid.nu);
in{

home = {
  packages = [ rofi-appgrid ];
  file.".config/rofi/launchers/rofi-appgrid/style.rasi".source = ./style.rasi;
};

programs.rofi = {
  enable  = true;
  package = pkgs.rofi-wayland;
  extraConfig.terminal = "kitty";
};

}

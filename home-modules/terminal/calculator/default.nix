{ pkgs, ...}:let
  open-calc = pkgs.writers.writeNuBin "open-calc"
    (builtins.readFile ./open-numbat.nu);
in{

home.packages = [
  pkgs.numbat
  pkgs.kalker
  open-calc
];

home.file.".config/numbat/config.toml".source = ./config.toml;

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float        , class:(calc)"
  "size 1200 900, class:(calc)"
];

}

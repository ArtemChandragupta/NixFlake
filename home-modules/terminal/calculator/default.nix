{ pkgs, ...}:let
  numbatScript = pkgs.writers.writeNuBin "open-calculator"
    (builtins.readFile ./numbatScript.nu);
in{

home.packages = [
  pkgs.numbat
  numbatScript
];

home.file.".config/numbat/config.toml".source = ./config.toml;

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float        , class:(calculator)"
  "size 1200 900, class:(calculator)"
];

}

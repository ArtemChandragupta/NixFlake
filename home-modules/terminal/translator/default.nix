{ pkgs, ...}:let
  open-translator = pkgs.writers.writeNuBin "open-translator"
    (builtins.readFile ./open-translator.nu);
in{

home.packages = [
  pkgs.gtt
  open-translator
];

home.file.".config/gtt/keymap.yaml".source = ./keymap.yaml;

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float        , class:(translator)"
  "size 1200 900, class:(translator)"
];

}

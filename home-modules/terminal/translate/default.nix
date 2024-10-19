{ pkgs, ...}:let
  translateScript = pkgs.writers.writeNuBin "open-translator"
    (builtins.readFile ./translateScript.nu);
in{

home.packages = [
  pkgs.gtt
  translateScript
];

home.file.".config/gtt/keymap.yaml".source = ./keymap.yaml;

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float        , class:(translator)"
  "size 1200 900, class:(translator)"
];

}

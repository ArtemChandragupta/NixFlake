{ pkgs, ...}:let
  open-dialect = pkgs.writers.writeNuBin "open-dialect"
    (builtins.readFile ./open-dialect.nu);
in{

home.packages = [
  pkgs.dialect
  open-dialect
];

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float        , class:(app.drey.Dialect)"
  "size 1200 900, class:(app.drey.Dialect)"
];

}

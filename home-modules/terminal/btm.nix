{ pkgs, ... }:
let
  open-btm = pkgs.writers.writeNuBin "open-resourceMonitor" /*nu*/''
    do --ignore-errors {pkill btm}
    focusCursor center
    kitty -o background_opacity=0.95 --class resourceMonitor -e "btm"
  '';
in{

programs.bottom.enable = true;

home.packages = [ open-btm ];

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float        , class:(resourceMonitor)"
  "size 1200 900, class:(resourceMonitor)"
];

}

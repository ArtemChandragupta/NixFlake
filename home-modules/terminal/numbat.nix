{ pkgs, ...}:
let
  open-calc = pkgs.writers.writeNuBin "open-calc" "focusCursor center | kitty -o background_opacity=0.95 --class calc -e 'numbat'";
in{

home.packages = [
  pkgs.numbat
  open-calc
];

programs.numbat = {
  enable = true;
  settings = {
    intro-banner = "off";
    pretty-print = "never";
    prompt = ">>- ";
    color  = "auto";
    exchange-rates.fetching-policy = "on-startup";
  };
};

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float        , class:(calc)"
  "size 1200 900, class:(calc)"
];

}

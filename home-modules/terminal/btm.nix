{ pkgs, ... }:
let
  open-btm = pkgs.writers.writeNuBin "open-resourceMonitor" /*nu*/''
    do --ignore-errors {pkill btm}
    kitty -o background_opacity=0.95 --class resourceMonitor -e "btm"
  '';
in{

programs.bottom.enable = true;

home.packages = [ open-btm ];

}

{ pkgs, ... }:
let
  open-btm = pkgs.writers.writeNuBin "open-resourceMonitor" /*nu*/''
    do --ignore-errors {pkill btm}
    kitty --class resourceMonitor -- btm -b -T -a --hide_k_threads --disable_advanced_kill --process_default_sort CPU%
  '';
in{

programs.bottom.enable = true;

home.packages = [ open-btm ];

}

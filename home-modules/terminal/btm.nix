{ pkgs, ... }:let
  open-btm = pkgs.writers.writeNuBin "open-resourceMonitor" 
  "focusCursor center | kitty -o background_opacity=0.95 --class translator -e 'btm'";
in{

programs.bottom.enable = true;

home.packages = [ open-btm ];

}

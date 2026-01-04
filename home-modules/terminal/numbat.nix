{ pkgs, ...}:
let
  open-calc = pkgs.writers.writeNuBin "open-calc" "focusCursor center | kitty -o background_opacity=0.95 -e 'numbat'";
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

}

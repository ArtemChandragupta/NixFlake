{ pkgs, ... }:
let
  recolor-border = pkgs.writers.writeNuBin "recolor-border"
    (builtins.readFile ./recolor-border.nu);
  zen-mode = pkgs.writers.writeNuBin "zen-mode"
    (builtins.readFile ./zen-mode.nu);
in{

home.packages = [
  recolor-border
  zen-mode
];

}

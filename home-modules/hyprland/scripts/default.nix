{ pkgs, ... }:
let
  zen-mode = pkgs.writers.writeNuBin "zen-mode" (builtins.readFile ./zen-mode.nu);
  recolor-border = pkgs.writers.writeNuBin "recolor-border" (builtins.readFile ./recolor-border.nu);
in{

home.packages = [
  zen-mode
  recolor-border
];

}

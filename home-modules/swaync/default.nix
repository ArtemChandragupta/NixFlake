{ pkgs, ... }:{

imports = [
  ./config.nix
  ./style.nix
];

home.packages = with pkgs; [
  swaynotificationcenter
];

}

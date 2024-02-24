{ pkgs, ... }:{

imports = [
  ./appgrid.nix
];

programs.rofi = {
  enable = true;
  package = pkgs.rofi-wayland;
  extraConfig = {
    terminal = "kitty";
  };
};
}

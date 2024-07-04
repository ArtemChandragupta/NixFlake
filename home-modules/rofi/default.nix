{ pkgs, ... }:{

imports = [
  ./appgrid
  ./cliphist
  ./cliphist-img
];

programs.rofi = {
  enable = true;
  package = pkgs.rofi-wayland;
  extraConfig = {
    terminal = "kitty";
  };
};

}

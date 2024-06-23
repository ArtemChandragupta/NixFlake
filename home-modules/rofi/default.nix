{ pkgs, ... }:{

imports = [
  ./appgrid
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

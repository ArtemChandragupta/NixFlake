{ pkgs, ... }:{

imports = [
  ./appgrid
  ./cliphist
];

programs.rofi = {
  enable = true;
  package = pkgs.rofi-wayland;
  extraConfig = {
    terminal = "kitty";
  };
};

}

{ pkgs, ... }:{

programs.rofi = {
  enable  = true;
  package = pkgs.rofi-wayland;
  extraConfig.terminal = "kitty";
};

home.file.".config/rofi/launchers/rofi-appgrid/style.rasi".source = ./style.rasi;

}

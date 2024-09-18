{ pkgs, ... }:{

programs.rofi = {
  enable  = true;
  package = pkgs.rofi-wayland;
  extraConfig.terminal = "kitty";
};

home = {
  packages = builtins.attrValues (import ./pkg.nix {inherit pkgs;});
  file.".config/rofi/launchers/rofi-appgrid/style.rasi".source = ./style.rasi;
};

}

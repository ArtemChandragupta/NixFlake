{ pkgs, ... }:{
  imports = [
    ./appgrid.nix
  ];

  home.packages = builtins.attrValues (import ./script.nix {inherit pkgs;});

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    extraConfig.terminal = "kitty";
  };
}

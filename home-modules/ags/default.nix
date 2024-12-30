{ inputs, var, pkgs, ... }:{

imports = [ 
  inputs.ags.homeManagerModules.default
];

home.packages = [
  inputs.ignis.packages.x86_64-linux.ignis
];

programs.ags = {
  enable = !var.init;
  # configDir = ./config;
  extraPackages = with pkgs; [
    inputs.ags.packages.${pkgs.system}.hyprland
    inputs.ags.packages.${pkgs.system}.tray
    inputs.ags.packages.${pkgs.system}.battery
    inputs.ags.packages.${pkgs.system}.network
    inputs.ags.packages.${pkgs.system}.wireplumber

    gobject-introspection
  ];
};

}

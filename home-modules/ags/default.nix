{ inputs, var, pkgs, ... }:{

imports = [ 
  inputs.ags.homeManagerModules.default
];

programs.ags = {
  enable = !var.init;
  configDir = ./config;
  extraPackages = with pkgs; [
    gtksourceview
    webkitgtk
    accountsservice
  ];
};

}

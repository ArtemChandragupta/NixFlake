{ inputs, var, ... }:{

imports = [ 
  inputs.ags.homeManagerModules.default
];

programs.ags = {
  enable = !var.init;
  configDir = ./config;
};

}

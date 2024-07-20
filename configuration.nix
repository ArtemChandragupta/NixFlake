{ var, inputs, ... }:{

imports = [
  inputs.home-manager.nixosModules.default
    
  ./modules
];

home-manager = {
  extraSpecialArgs = { inherit inputs var; };
  backupFileExtension = "hm-backuping";
};

environment.variables = {
  TERM = "kitty";
  TERMINAL = "kitty";
};

documentation.nixos.enable = false;
system.stateVersion = "23.11";

}

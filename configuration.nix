{ var, inputs, ... }:{

imports = [
  inputs.home-manager.nixosModules.default

  ./modules
];

home-manager = {
  extraSpecialArgs = {
    inherit inputs; 
    inherit var;
  };
  backupFileExtension = "hm-backup";
};

documentation.nixos.enable = false;
system.stateVersion = "24.05";

}

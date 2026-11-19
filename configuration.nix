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
  sharedModules = [ inputs.stylix.homeModules.stylix ];
  backupFileExtension = "hm-backup";
};

documentation.nixos.enable = false;
system.stateVersion = "${var.base}";

}

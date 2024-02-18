{ inputs, ... }:{

imports = [
  inputs.home-manager.nixosModules.default
  ./modules
  ./environment/glossynix
];

users.users.artem = {
  isNormalUser = true;
  description = "artem";
  extraGroups = [ "networkmanager" "wheel" "audio" "video" "input" "libvirtd" "docker" ];
};

home-manager = {
  extraSpecialArgs = { inherit inputs; };
  users = {
    "artem" = import ./home-modules/home.nix;
  };
};

system.stateVersion = "23.11";

}

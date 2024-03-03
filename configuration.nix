{ username, inputs, ... }:{

imports = [
  inputs.home-manager.nixosModules.default
  ./modules
  ./environment/glossynix
  #../../etc/nixos/hardware-configuration.nix--impure
];

documentation.nixos.enable = false;
programs.kdeconnect.enable = true; 

users.users.${username} = {
  isNormalUser = true;
  extraGroups = [ 
    "networkmanager" 
    "wheel" 
    "audio" 
    "video" 
    "input" 
    "libvirtd" 
    "docker" 
  ];
};

home-manager = {
  extraSpecialArgs = { inherit inputs username; };
  users = {
    "${username}" = import ./home-modules/home.nix;
  };
};

system.stateVersion = "23.11";

}

{ var, pkgs, ... }:{

nix.settings.trusted-users = [
  "root"
  "@wheel"
];

users.users.${var.user} = {
  isNormalUser = true;
  shell = pkgs.nushell;
  extraGroups = [ 
    "networkmanager"
    "wheel"
    "libvirtd"
    "docker"
  ];
};

home-manager.users."${var.user}" = import ../../home-modules/home.nix;

}

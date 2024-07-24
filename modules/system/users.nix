{ var, pkgs, ... }:{

nix.settings.trusted-users = [
  "root"
  "@wheel"
];

users.users.${var.username} = {
  isNormalUser = true;
  shell = pkgs.nushell;
  extraGroups = [ 
    "networkmanager"
    "media"
    "wheel"
    "audio"
    "video"
    "input"
    "libvirtd"
    "docker"
  ];
};

home-manager.users."${var.username}" = import ../../home-modules/home.nix;

}

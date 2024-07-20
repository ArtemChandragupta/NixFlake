{ var, ... }:{

nix.settings.trusted-users = [
  "root"
  "@wheel"
];

users.users.${var.username} = {
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

home-manager.users."${var.username}" = import ../../home-modules/home.nix;

}

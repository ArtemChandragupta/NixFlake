{ var, pkgs, ... }:{

imports = [
  ./stylix.nix
] ++ ( if var.host == "ThinkBook13s" 
  then [ ./hyprland.nix ] 
  else [ ./gnome.nix    ]
);

programs.dconf.enable = true;

services.xserver = {
  enable = true;
  excludePackages = [ pkgs.xterm ];
};

}

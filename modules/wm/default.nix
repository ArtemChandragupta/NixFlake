{ pkgs, ... }:{

imports = [
  ./dm.nix
  ./hyprland.nix
  ./stylix.nix
];

programs.dconf.enable = true;
services.dbus.enable  = true;

services.xserver = {
  enable = true;
  excludePackages = [ pkgs.xterm ];
};

}

{ var, pkgs, ... }:{

imports = if var.host == "ThinkBook13s" then [
  ./gnome.nix
  ./hyprland.nix
  ./stylix.nix
] else if var.host == "homePC" then [
  ./gnome.nix
  ./stylix.nix
] else [ ];

programs.dconf.enable = true;
services.dbus.enable = true;

services.xserver = {
  enable = true;
  excludePackages = [ pkgs.xterm ];
};

}

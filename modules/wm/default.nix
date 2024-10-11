{ var, pkgs, ... }:{

imports = if var.host == "ThinkBook13s" then [
  ./hyprland.nix
  ./stylix.nix
  ./ly.nix
] else if var.host == "homePC" then [
  ./gdm.nix
  ./gnome.nix
  ./hyprland.nix
  ./stylix.nix
] else [ ];

programs.dconf.enable = true;
services.dbus.enable = true;

services.xserver = {
  enable = true;
  excludePackages = [ pkgs.xterm ];
};

}

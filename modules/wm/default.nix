{

imports = [
  ./dm.nix
  ./hyprland.nix
  ./niri.nix
  ./stylix.nix
];

programs.dconf.enable = true;
services.dbus.enable  = true;

}

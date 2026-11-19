{

imports = [
  ./dm.nix
  # ./hyprland.nix
  ./niri.nix
];

programs.dconf.enable = true;
services.dbus.enable  = true;

}

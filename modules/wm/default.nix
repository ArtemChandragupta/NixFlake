{ var, ... }:{

imports = [
  ./hyprland.nix
  ./gnome.nix
  #./tuigreet
  ./gdm.nix
] ++ (
if var.glossy == true
  then [ ./starship.nix ]
  else []
);

}

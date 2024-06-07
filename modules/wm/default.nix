{ var, ... }:{

imports = [
  ./stylix.nix
  ./hyprland.nix
  ./gnome.nix
] ++ (
if var.glossy == true
  then [ ./starship.nix ]
  else []
);

}

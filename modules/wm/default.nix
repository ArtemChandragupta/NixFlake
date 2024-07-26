{ var, ... }:{

imports = [
  ./gnome.nix
  ./stylix.nix
] ++ (
  if var.machine == "ThinkBook13s" then [
    ./hyprland.nix
  ] else []
);

}

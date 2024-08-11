{ var, ... }:{

imports = [
  ./gnome.nix
  ./stylix.nix
] ++ (
  if var.host == "ThinkBook13s" then [
    ./hyprland.nix
  ] else []
);

}

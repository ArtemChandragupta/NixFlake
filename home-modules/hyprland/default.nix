{ pkgs, config, lib, inputs, ... }:{

imports = [
  ./binds.nix
  ./rules.nix
  ./settings.nix
  ./autoname-workspaces.nix
];

wayland.windowManager.hyprland = {
  enable  = true;
  package = inputs.hyprland.packages.${pkgs.system}.hyprland;
};

home.sessionVariables = {
  XDG_CURRENT_DESKTOP = "Hyprland";
  XDG_SESSION_DESKTOP = "Hyprland";
};

}

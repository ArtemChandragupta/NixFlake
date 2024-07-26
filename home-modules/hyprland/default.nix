{ pkgs, inputs, var, ... }:{

imports = [
  ./hypridle
  ./hyprlock

  ./binds.nix
  ./monitors.nix
  ./rules.nix
  ./settings.nix
] ++ (
  if var.glossy == true
    then [./wallpaper]
    else [] 
);

wayland.windowManager.hyprland = {
  enable  = true;
  package = inputs.hyprland.packages.${pkgs.system}.hyprland;
  systemd.variables = ["--all"];
};

home.sessionVariables = {
  XDG_CURRENT_DESKTOP = "Hyprland";
  XDG_SESSION_DESKTOP = "Hyprland";
};

}

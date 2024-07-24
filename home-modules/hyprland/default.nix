{ pkgs, inputs, ... }:{

imports = [
  ./hypridle
  ./hyprlock
  ./wallpaper

  ./binds.nix
  ./monitors.nix
  ./rules.nix
  ./settings.nix
];

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

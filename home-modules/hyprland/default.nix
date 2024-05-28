{ pkgs, inputs, ... }:{
  imports = [
    ./binds.nix
    ./rules.nix
    ./settings.nix
    ./multimonitor.nix
    ./hyprlock
    ./hypridle
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

{ pkgs, inputs, var, ... }:{

imports = [
  # ./autoname
  ./rofi-appgrid
  ./monitors
  ./swaync
  ./wallpaper
  ./waybar

  ./binds.nix
  # ./monitors.nix
  ./rules.nix
  ./screenlock.nix
  ./settings.nix
];

wayland.windowManager.hyprland = {
  enable  = true;
  package = if var.init 
    then pkgs.hyprland
    else inputs.hyprland.packages.${pkgs.system}.hyprland;
  systemd.variables = [ "--all" ];
};

dconf.settings."org/gnome/desktop/wm/preferences/button-layout".appmenu = "";

home.sessionVariables = {
  XDG_CURRENT_DESKTOP = "Hyprland";
  XDG_SESSION_DESKTOP = "Hyprland";
};

}

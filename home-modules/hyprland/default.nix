{

imports = [
  # ./autoname
  ./icons
  ./rofi-appgrid
  ./screenshots
  ./monitors
  ./swaync
  ./wallpaper
  ./waybar
  ./zen-mode

  ./binds.nix
  ./rules.nix
  ./screenlock.nix
  ./settings.nix
];

wayland.windowManager.hyprland = {
  enable  = true;
  systemd.variables = [ "--all" ];
};

dconf.settings."org/gnome/desktop/wm/preferences/button-layout".appmenu = "";

home.sessionVariables = {
  XDG_CURRENT_DESKTOP = "Hyprland";
  XDG_SESSION_DESKTOP = "Hyprland";
};

}

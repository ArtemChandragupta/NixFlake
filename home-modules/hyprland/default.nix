{

imports = [
  ./icons
  ./rofi-appgrid
  ./screenshots
  ./monitors
  ./swaync
  ./wallpaper
  ./waybar
  ./zen-mode

  ./autostart.nix
  ./binds.nix
  ./rules.nix
  ./screenlock.nix
  ./settings.nix
];

wayland.windowManager.hyprland = {
  enable  = true;
  systemd.variables = [ "--all" ];
  settings.env = [
    "XCURSOR_SIZE,24" # unified cursor size
    "QT_QPA_PLATFORMTHEME, gtk3" # for telegram file manager

    "XDG_CURRENT_DESKTOP, Hyprland" # for display manager and other
    "XDG_SESSION_TYPE, wayland"
    "XDG_SESSION_DESKTOP, Hyprland"
  ];
};

dconf.settings."org/gnome/desktop/wm/preferences/button-layout".appmenu = "";

home.sessionVariables = {
  XDG_CURRENT_DESKTOP = "Hyprland";
  XDG_SESSION_DESKTOP = "Hyprland";
};

}

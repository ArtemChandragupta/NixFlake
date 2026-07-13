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
  configType = "lua";
  systemd.variables = [ "--all" ];
  settings.env = [
     { _args = [ "XCURSOR_SIZE" "24"           ]; } # unified cursor size
     { _args = [ "QT_QPA_PLATFORMTHEME" "gtk3" ]; } # for telegram file manager

     { _args = [ "XDG_CURRENT_DESKTOP" "Hyprland" ]; } # for display manager and other
     { _args = [ "XDG_SESSION_TYPE" "wayland"     ]; }
     { _args = [ "XDG_SESSION_DESKTOP" "Hyprland" ]; }
  ];
};

dconf.settings."org/gnome/desktop/wm/preferences/button-layout".appmenu = "";

home.sessionVariables = {
  XDG_CURRENT_DESKTOP = "Hyprland";
  XDG_SESSION_DESKTOP = "Hyprland";
};

home.file.".config/hypr/hyprtoolkit.conf".source = ./hyprtoolkit.conf;

}

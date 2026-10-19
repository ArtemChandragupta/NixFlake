{ pkgs, inputs, ... }:{

programs.niri.enable = true;
environment.systemPackages = [
  pkgs.xwayland-satellite
];

imports = [ inputs.piri.nixosModules.piri ];
services.piri.enable = true;
xdg.portal.config.niri = {
  "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ];
};
environment.sessionVariables = {
  NIXOS_OZONE_WL = "1";
  QT_QPA_PLATFORMTHEME = "xdgdesktopportal";
  QT_QPA_PLATFORM = "wayland;xcb";
  QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
};

systemd.user.services.niri.enableDefaultPath = false;

}

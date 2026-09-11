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
  QT_QPA_PLATFORMTHEME = "xdgdesktopportal";
};

systemd.user.services.niri.enableDefaultPath = false;

}

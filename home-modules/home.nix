{ config, pkgs, inputs, ... }:{

home = {
  username = "artem";
  homeDirectory = "/home/artem";
  stateVersion = "23.11";
  packages = [];
  file = {};
};

programs.home-manager.enable = true;

imports = [
  ./lf
  ./btop
  ./zathura
  ./dunst
  ./gtk_qt
  ./imv
];

xdg.mimeApps.defaultApplications = {
  "application/pdf" = [ "zathura.desktop"  ];
  "image/*"         = [ "viewnior.desktop" ];
  "video/png"       = [ "mpv.desktop"      ];
  "video/jpg"       = [ "mpv.desktop"      ];
  "video/*"         = [ "mpv.desktop"      ];
};
      
}

{ pkgs, username, ... }:{

home = {
  inherit username;
  homeDirectory = "/home/${username}";  
  stateVersion = "23.11";
  packages = builtins.attrValues (import ./rofi/script.nix {inherit pkgs;});
  sessionVariables = {
    BROWSER  = "firefox";
    TERMINAL = "kitty";
  };
};

programs.home-manager.enable = true;

imports = [

  ./lf
  ./btop
  ./zathura
  ./dunst
  ./gtk_qt
  ./imv
  ./kitty
  ./hyprland
  ./yazi
  ./helix
  ./wofi
  ./rofi
  
];

xdg.mimeApps.defaultApplications = {
  "application/pdf" = [ "zathura.desktop"  ];
  "image/*"         = [ "viewnior.desktop" ];
  "video/png"       = [ "mpv.desktop"      ];
  "video/jpg"       = [ "mpv.desktop"      ];
  "video/*"         = [ "mpv.desktop"      ];
};

}

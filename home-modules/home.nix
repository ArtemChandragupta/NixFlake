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
  pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Original-Classic";
    size = 24;
  };
};

programs.home-manager.enable = true;

imports = [
  ./btop.nix
  ./zathura.nix
  ./dunst.nix
  ./gtk+qt.nix
  ./imv.nix
  ./kitty.nix
  ./helix.nix
  ./wofi.nix

  ./hyprland
  ./yazi
  ./rofi
  ./ags
];

xdg.mimeApps.defaultApplications = {
  "application/pdf" = [ "zathura.desktop"  ];
  "image/*"         = [ "viewnior.desktop" ];
  "video/png"       = [ "mpv.desktop"      ];
  "video/jpg"       = [ "mpv.desktop"      ];
  "video/*"         = [ "mpv.desktop"      ];
};

}

{ pkgs, inputs, ... }:{

home = {
  username = "artem";
  homeDirectory = "/home/artem";
  stateVersion = "23.11";
  packages = builtins.attrValues (import ./rofi/script.nix {inherit pkgs;});
  file = {};
};

programs.home-manager.enable = true;

imports = [
  inputs.nix-colors.homeManagerModules.default

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

colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;

xdg.mimeApps.defaultApplications = {
  "application/pdf" = [ "zathura.desktop"  ];
  "image/*"         = [ "viewnior.desktop" ];
  "video/png"       = [ "mpv.desktop"      ];
  "video/jpg"       = [ "mpv.desktop"      ];
  "video/*"         = [ "mpv.desktop"      ];
};
      
}

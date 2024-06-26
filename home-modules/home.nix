{ var, ... }:{

imports = [
  ./ags
  ./anyrun
  ./hyprland
  ./nixvim
  ./rofi
  ./swaync
  ./waybar
  ./wofi
  ./yazi

  ./btop.nix
  ./git.nix
  ./helix.nix
  ./kitty.nix
  ./stylix.nix
  ./zathura.nix
];

programs.home-manager.enable = true;

home = {
  username = var.username;
  homeDirectory = "/home/${var.username}";  
  stateVersion = "23.11";
  sessionVariables = {
    BROWSER  = "firefox";
    TERMINAL = "kitty";
  };
};

xdg = {
  enable = true;
  mime.enable = true;
  mimeApps = {
    enable = true;
    
    associations.added = {
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
      "image/*"         = [ "org.gnome.Loupe.desktop"  ];
      "video/*"         = [ "totem.desktop"            ];
    };
    
    defaultApplications = {
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
      "image/*"         = [ "org.gnome.Loupe.desktop"  ];
      "video/*"         = [ "totem.desktop"            ];
    };
    
  };
};

}

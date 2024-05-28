{ var, ... }:{

home = {
  username = var.username;
  homeDirectory = "/home/${var.username}";  
  stateVersion = "23.11";
  sessionVariables = {
    BROWSER  = "firefox";
    TERMINAL = "kitty";
  };
};

programs.home-manager.enable = true;

imports = [
  ./btop.nix
  ./zathura.nix
  ./gtk+qt+cursor.nix
  ./kitty.nix
  ./helix.nix
  ./wofi.nix
  ./git.nix

  ./hyprland
  ./yazi
  ./rofi
  ./ags
  ./nixvim
  ./swaync
];

xdg.mimeApps.defaultApplications = {
  "application/pdf" = [ "org.gnome.Evince.desktop" ];
  "image/*"         = [ "org.gnome.Loupe.desktop"   ];
  "video/png"       = [ "totem.desktop"   ];
  "video/jpg"       = [ "totem.desktop"   ];
  "video/*"         = [ "totem.desktop"   ];
};

}

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
  ./btop.nix
  ./zathura.nix
  ./dunst.nix
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
];

xdg.mimeApps.defaultApplications = {
  "application/pdf" = [ "org.gnome.Evince.desktop" ];
  "image/*"         = [ "org.gnome.Loupe.desktop"   ];
  "video/png"       = [ "totem.desktop"   ];
  "video/jpg"       = [ "totem.desktop"   ];
  "video/*"         = [ "totem.desktop"   ];
};

}

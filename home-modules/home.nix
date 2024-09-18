{ var, ... }:{

imports = if var.host == "ThinkBook13s" then [
  ./ags
  ./firefox
  ./hyprland
  ./languages
  ./terminal

  ./stylix.nix
  ./xdg.nix
] else if var.host == "homePC" then [
  ./firefox
  ./languages
  ./terminal

  ./stylix.nix
  ./xdg.nix
] else [ ];

programs.home-manager.enable = true;

home = {
  username = var.user;
  homeDirectory = "/home/${var.user}";  
  stateVersion  = "24.05";
  sessionVariables = {
    BROWSER  = "firefox";
    TERMINAL = "kitty";
  };
};

}

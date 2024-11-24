{ var, ... }:{

imports = [
  # ./ags
  ./firefox
  ./hyprland
  ./languages
  ./terminal

  ./stylix.nix
  ./xdg.nix
];

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

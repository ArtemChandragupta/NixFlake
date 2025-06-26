{ var, ... }:{

imports = [
  # ./ags
  ./apps
  ./hyprland
  ./languages
  ./terminal

  ./stylix.nix
];

programs.home-manager.enable = true;

home = {
  username = var.user;
  homeDirectory = "/home/${var.user}";  
  stateVersion  = "${var.base}";
  sessionVariables = {
    BROWSER  = "firefox";
    TERMINAL = "kitty";
  };
};

}

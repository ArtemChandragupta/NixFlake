{ var, ... }:{

imports = if var.host == "ThinkBook13s" then [
  ./ags
  ./firefox
  ./hyprland
  # ./nixvim
  ./nushell
  ./rofi
  ./swaync
  ./waybar
  ./yazi

  ./bash.nix
  ./btop.nix
  ./clipse.nix
  ./fastfetch.nix
  ./git.nix
  ./helix.nix
  ./kitty.nix
  ./starship.nix
  ./stylix.nix
  ./xdg.nix
] else if var.host == "homePC" then [
  ./firefox
  ./nushell
  ./yazi

  ./bash.nix
  ./btop.nix
  ./fastfetch.nix
  ./git.nix
  ./helix.nix
  ./kitty.nix
  ./starship.nix
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

{ var, ... }:{

imports = if var.machine == "ThinkBook13s" then [
  ./ags
  ./anyrun
  ./hyprland
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
] else if var.machine == "desktop" then [
  ./yazi

  ./bash.nix
  ./btop.nix
  ./git.nix
  ./helix.nix
  ./kitty.nix
  ./starship.nix
  ./stylix.nix
  ./xdg.nix
] else [ ];

programs.home-manager.enable = true;

home = {
  username = var.username;
  homeDirectory = "/home/${var.username}";  
  stateVersion  = "23.11";
  sessionVariables = {
    BROWSER  = "firefox";
    TERMINAL = "kitty";
  };
};

}

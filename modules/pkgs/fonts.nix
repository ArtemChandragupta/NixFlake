{ pkgs, ... }:{

fonts.packages = with pkgs; [
  nerd-fonts.noto           # For UI
  nerd-fonts.jetbrains-mono # Favourite monospace font

  stix-two # Best font for everything!

  iosevka  # Only for clock on nix output manager

  corefonts # Microsoft trash
  open-sans # For Onlyoffice
];

}

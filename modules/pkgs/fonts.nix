{ pkgs, ... }:{

fonts.packages = with pkgs; [
  nerd-fonts.noto           # For UI
  nerd-fonts.jetbrains-mono # Favourite monospace font

  stix-two # Best font for scientific documents

  iosevka  # Only for clock on nix output manager

  noto-fonts # Fonts for all writing systems
  noto-fonts-cjk-sans # And for hieroglific too!

  corefonts # Microsoft trash
  open-sans # For Onlyoffice
];

}

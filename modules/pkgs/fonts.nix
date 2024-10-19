{ pkgs, ... }:{

fonts.packages = with pkgs; [
  nerdfonts        # For icons!
  iosevka          # Only for clock on nix output manager

  noto-fonts          # Beautiful for all languages!
  noto-fonts-cjk-sans # And asian also

  corefonts # Microsoft trash
  open-sans # For Onlyoffice
];

}

{ pkgs, ... }:{

fonts.packages = with pkgs; [
  nerdfonts        # For icons!
  font-awesome     # Only for clock on nix output manager
  iosevka
  sf-mono-liga-bin # Stolen from Apple

  open-sans           # For office
  noto-fonts          # Beautiful for all languages!
  noto-fonts-cjk-sans # And asian also
];

}

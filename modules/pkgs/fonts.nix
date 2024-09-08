{ pkgs, ... }:{

fonts.packages = with pkgs; [
  nerdfonts        # For icons!
  iosevka          # Only for clock on nix output manager
  sf-mono-liga-bin # Stolen from Apple

  open-sans           # For office
  noto-fonts          # Beautiful for all languages!
  noto-fonts-cjk-sans # And asian also
];

}

{ pkgs, inputs, ... }:{

fonts.packages = with pkgs; [
  font-awesome
  iosevka
  material-design-icons
  nerdfonts
  open-sans
  inputs.apple-fonts.packages.${pkg.system}.sf-pro-nerd
];

}

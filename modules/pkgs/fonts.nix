{ pkgs, config, lib, ... }:{
fonts.packages = with pkgs; [

  font-awesome
  iosevka
  material-design-icons
  nerdfonts

];
}
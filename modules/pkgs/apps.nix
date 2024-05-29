{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  firefox
  cinnamon.nemo
  drawio
  inkscape
  obsidian
  transmission-gtk
  telegram-desktop
  openscad
  discord
  libreoffice-qt
  veusz
  localsend
  neovide
  gnome.gnome-tweaks 
];

}

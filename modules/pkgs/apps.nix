{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  firefox
  cinnamon.nemo
  obsidian
  transmission-gtk
  neovide
  gnome.gnome-tweaks

  telegram-desktop
  discord
  localsend

  libreoffice-qt
  onlyoffice-bin
  zathura

  openscad
  inkscape
  drawio
  veusz
  qalculate-gtk
];

}

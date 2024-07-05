{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  firefox
  obsidian
  transmission_4-gtk
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

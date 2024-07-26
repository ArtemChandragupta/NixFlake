{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  kitty

  firefox
  obsidian
  transmission_4-gtk
  gnome-tweaks
  mpv

  telegram-desktop
  discord
  localsend

  onlyoffice-bin

  openscad
  inkscape
  drawio
  dosbox-x
];

}

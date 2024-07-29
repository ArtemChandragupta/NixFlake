{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  kitty

  firefox
  obsidian
  transmission_4-gtk
  gnome-tweaks

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

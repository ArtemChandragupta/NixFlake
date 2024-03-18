{ pkgs, ... }:{
environment.systemPackages = with pkgs; [

firefox
cinnamon.nemo
gnome.gnome-calculator
drawio
inkscape
obsidian
transmission-gtk
telegram-desktop
openscad
discord
libreoffice-qt
gnome.dconf-editor
mcomix
hydrus
veusz
github-desktop

];
}

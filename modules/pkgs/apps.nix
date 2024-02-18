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
imv
openscad
discord

];
}

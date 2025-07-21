{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  loupe              # Gnome photo
  papers             # Gnome pdf
  baobab             # Gnome disk analizer
  nautilus           # Gnome file manager
  snapshot           # Gnome camera
  gnome-disk-utility # Gnome disk scanner
  refine             # GTK settings - remove buttons
  # ghostty

  hyprpicker

  obsidian
  fragments
  icon-library
  file-roller

  telegram-desktop
  localsend
  translate-shell

  libreoffice
  zola
  mendeley

  inkscape
  # drawio
  dosbox-staging
];

}

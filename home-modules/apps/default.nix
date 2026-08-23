{ pkgs, ... }:{

imports = [
  ./firefox

  ./games.nix
  ./mpv.nix
  ./zathura.nix
];

home.packages = with pkgs; [
  loupe              # Gnome photo
  papers             # Gnome pdf
  baobab             # Gnome disk analizer
  nautilus           # Gnome file manager
  snapshot           # Gnome camera
  gnome-disk-utility # Gnome disk scanner
  refine             # GTK settings - remove buttons

  hyprpicker

  fragments
  file-roller

  telegram-desktop

  libreoffice
  zola
  # mendeley

  inkscape
  gimp
  # drawio
  dosbox-staging
];

}

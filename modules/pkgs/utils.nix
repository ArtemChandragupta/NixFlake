{ pkgs, ... }:{
environment.systemPackages = with pkgs; [
  wget
  git
  zip
  rar
  gnutar
  brightnessctl
  gruvbox-gtk-theme
  exiftool
  gh
  go-toml
  gopsuinfo
];
}

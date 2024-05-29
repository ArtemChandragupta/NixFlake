{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  wget
  zip
  rar
  gnutar
  brightnessctl
  gruvbox-gtk-theme
  exiftool
  go-toml
  gopsuinfo

  git
  gh
  gitkraken
  github-desktop
  gitui
];

}

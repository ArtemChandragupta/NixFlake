{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  zip
  rar
  gnutar
  unar
  
  brightnessctl
  lm_sensors
  
  exiftool
  go-toml
  gopsuinfo
  ffmpeg
  eza
  
  wget
  cachix

  git
  gh
  gitui
];

}

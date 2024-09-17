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
  xdragon
  
  wget
  cachix

  git
  gh
  gitui
];

}

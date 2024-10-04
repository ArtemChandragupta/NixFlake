{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  zip
  rar
  gnutar
  unar

  brightnessctl
  lm_sensors
  libnotify
  
  exiftool
  # gopsuinfo
  ffmpeg
  xdragon
  
  wget
  cachix

  git
  gh
  gitui
];

}

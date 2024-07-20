{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  zip
  rar
  gnutar
  
  brightnessctl
  lm_sensors

  fastfetch
  nitch
  
  exiftool
  go-toml
  gopsuinfo
  
  wget
  cachix

  git
  gh
  gitui
];

}

{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  zip
  # rar
  # gnutar
  # unar

  brightnessctl
  lm_sensors
  libnotify # Notification sender
  
  # exiftool
  ffmpeg
  xdragon # Drag-and-drop
  
  wget
  cachix # Nix cache

  git
  gh
  gitui
];

}

{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  brightnessctl # Brightness control
  libnotify     # Notification sender
  ffmpeg  # Lib for media manipulations
  ripdrag # Drag and drop from terminal

  wget   # Get things from internet
  cachix # Nix cache for flakes

  grex # Generate regex from examples
  dust # Disc usage tui
];

}

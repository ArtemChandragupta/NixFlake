{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  brightnessctl # Brightness control
  libnotify     # Notification sender
  ffmpeg  # Lib for media manipulations
  ffmpegthumbnailer # Lib for tumbnails
  ripdrag # Drag and drop from terminal

  wget # Get things from internet
  just # Typst needs it
  nurl # Get hash for derevation
  grex # Generate regex from examples
  dust # Disc usage tui
];

}

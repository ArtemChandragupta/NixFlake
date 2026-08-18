{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  brightnessctl # Brightness control
  libnotify # Notification sender
  ffmpeg # Lib for media manipulations
  ffmpegthumbnailer # Lib for tumbnails
  socat # Watch UNIX sockets
  wget # Get things from internet
  nurl # Get hash for derevation
  gcc # C compiler for supplementaries
];

}

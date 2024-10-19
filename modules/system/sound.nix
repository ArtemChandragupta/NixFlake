{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  pwvucontrol
  alsa-utils
];

hardware.pulseaudio.enable = false;
security.rtkit.enable = true;
services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  wireplumber = {
    enable = true;
    extraConfig."10-disable-camera"."wireplumber.profiles".main."monitor.libcamera" = "disabled";
  };
};

services.mpd.enable = true;

}

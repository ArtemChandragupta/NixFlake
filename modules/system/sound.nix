{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  pwvucontrol
  alsa-utils
];

#sound.enable = true;
hardware.pulseaudio.enable = false;
security.rtkit.enable = true;
services = {
  pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };
  mpd.enable = true;
};

}

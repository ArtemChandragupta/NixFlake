{ pkgs, ... }:{

services.sunshine = { # Server for remote desktop
  enable       = true;
  autoStart    = true;
  capSysAdmin  = true;
  openFirewall = true;
};

hardware.uinput.enable = true;

environment.systemPackages = [ pkgs.stash ]; # No comments

}

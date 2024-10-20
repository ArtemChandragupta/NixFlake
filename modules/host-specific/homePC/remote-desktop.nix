{ pkgs, ... }:{

services.sunshine = { # Server for remote desktop
  enable = true;
  autoStart = true;
  capSysAdmin = true;
  openFirewall = true;
};

environment.systemPackages = [ pkgs.stash ]; # No comments

}

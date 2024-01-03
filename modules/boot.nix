{ config, ... }:
{

boot = { 
  loader = {
    timeout = 0;
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
};

services = {
  getty.autologinUser = "artem";
};

}

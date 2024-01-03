{ pkgs, config, ... }:
{

services = { 
  gvfs.enable = true;
  udisks2.enable = true;
  devmon.enable = true;
};

environment.systemPackages = with pkgs; [
  usbutils
  udiskie
  udisks
];

}

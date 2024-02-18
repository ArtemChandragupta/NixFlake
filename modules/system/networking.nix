{ pkgs, ... }:{

networking.hostName = "nixos";
networking.networkmanager.enable = true;

environment.systemPackages = [
  pkgs.networkmanagerapplet
  pkgs.tor
];

services.tor.enable = true;
  
hardware.bluetooth.enable = true;
services.blueman.enable = true;


}

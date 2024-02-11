{ pkgs, config, lib, ... }:{

networking.hostName = "nixos";
networking.networkmanager.enable = true;

environment.systemPackages = [
  pkgs.networkmanagerapplet
  pkgs.tor
];

services.tor.enable = true;
  

hardware.bluetooth.enable = true; # enables support for Bluetooth
services.blueman.enable = true;


}

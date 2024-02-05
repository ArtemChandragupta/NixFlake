{ pkgs, config, lib, ... }:{

networking.hostName = "nixos";
networking.networkmanager.enable = true;

services.logmein-hamachi.enable = true;
programs.haguichi.enable = true;

hardware.bluetooth.enable = true; # enables support for Bluetooth
services.blueman.enable = true;


}

{ pkgs, config, ... }:
{

networking.hostName = "nixos";
networking.networkmanager.enable = true;

services.logmein-hamachi.enable = true;
programs.haguichi.enable = true;


}

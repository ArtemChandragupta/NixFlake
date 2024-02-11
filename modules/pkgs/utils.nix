{ pkgs, config, lib, ... }:{
environment.systemPackages = with pkgs; [

wget 
git
zip 
unzip
rar 
gnutar
brightnessctl

];
}

{ pkgs, ... }:{
environment.systemPackages = with pkgs; [

ppsspp
bottles
moonlight-qt
remmina
lutris
dosbox-x

];
}

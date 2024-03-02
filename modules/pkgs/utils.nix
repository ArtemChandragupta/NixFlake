{ pkgs, ... }:{
environment.systemPackages = with pkgs; [

wget 
git
zip
rar 
gnutar
brightnessctl
libsForQt5.kdeconnect-kde
gruvbox-gtk-theme

];
programs.kdeconnect.enable = true;
}

{ pkgs, config, lib, ... }:{

environment.systemPackages = with pkgs; [
    
# utils  
wget 
git
zip 
unzip
rar 
gnutar
brightnessctl
    
    # terminal
    kitty
    btop
    neofetch
    nitch
    micro
    mpv
    transmission-gtk
    
# apps
firefox
cinnamon.nemo
gnome.gnome-calculator
drawio
inkscape
obsidian
telegram-desktop
imv
openscad
tor

	#games
	ppsspp
	bottles
	moonlight-qt
	lutris
    
];

fonts.packages = with pkgs; [
  font-awesome
  iosevka
  material-design-icons
  nerdfonts
];

}

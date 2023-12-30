{ pkgs, config, lib, ... }:
{

  environment.systemPackages = with pkgs; [
    
    # utils  
    wget
    git
    zip
    unzip
    rar
    brightnessctl
    usbutils
    udiskie
    udisks
    xdg-user-dirs
    
    # terminal
    kitty
    btop
    neofetch
    
    # wayland staff
    rofi
    hyprpaper
    waybar
    grim
    slurp
    wl-clipboard
    imagemagick
    swappy     

    # apps
    firefox
    cinnamon.nemo
    gnome.gnome-calculator
    drawio
    inkscape
    obsidian
    telegram-desktop
    ppsspp
    nyxt
    viewnior
    bottles
    lutris

    # java
    jre8
    jdk8
    jdk8_headless
    
  ];

  fonts.packages = with pkgs; [
    font-awesome
    iosevka
    material-design-icons
    nerdfonts
  ];

}

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
    micro
    
    # terminal
    kitty
    btop
    neofetch
    bottom
    
    # wayland staff
    rofi
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
    viewnior

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

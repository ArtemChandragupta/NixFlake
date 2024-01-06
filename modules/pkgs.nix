{ pkgs, config, lib, ... }:
{

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
    micro
    
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
    openscad
    _2048-in-terminal
    transmission
    
  ];

  fonts.packages = with pkgs; [
    font-awesome
    iosevka
    material-design-icons
    nerdfonts
  ];

}

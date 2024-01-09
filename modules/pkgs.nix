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
    mpv
    transmission-gtk
    xplr
    
    
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
    viewnior
    openscad
    
  ];

  fonts.packages = with pkgs; [
    font-awesome
    iosevka
    material-design-icons
    nerdfonts
  ];

}

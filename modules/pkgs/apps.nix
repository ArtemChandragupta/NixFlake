{ pkgs, var, ... }:{

environment.systemPackages = if var.init
  then with pkgs; [kitty]
  else with pkgs; [
    kitty
    obsidian
    transmission_4-gtk

    telegram-desktop
    discord
    localsend

    onlyoffice-bin
    libreoffice
    zola
    mendeley

    dconf-editor

    openscad
    inkscape
    drawio
    dosbox-staging
  ];

}

{ pkgs, var, ... }:{

environment.systemPackages = if var.init
  then with pkgs; [ kitty ]
  else with pkgs; [
    kitty
    obsidian
    fragments
    icon-library
    arduino-ide
    tdf
    file-roller
    php

    telegram-desktop
    localsend

    libreoffice
    zola
    mendeley

    openscad-unstable
    exhibit
    inkscape
    drawio
    dosbox-staging
  ];

}

{ pkgs, var, ... }:{

environment.systemPackages = if var.init
  then with pkgs; [ kitty ]
  else with pkgs; [
    kitty
    obsidian
    fragments
    icon-library

    telegram-desktop
    localsend

    onlyoffice-bin
    libreoffice
    zola
    mendeley

    openscad
    inkscape
    drawio
    dosbox-staging
  ];

}

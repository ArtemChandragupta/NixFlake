{ pkgs, var, ... }:{

environment.systemPackages = if var.init
  then with pkgs; [ kitty ]
  else with pkgs; [
    kitty
    obsidian
    fragments
    icon-library
    pandoc
    arduino-ide
    github-desktop

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

{ pkgs, var, ... }:{

environment.systemPackages = if var.init
  then with pkgs; [ kitty ]
  else with pkgs; [
    kitty
    obsidian
    fragments
    icon-library
    file-roller
    showtime

    telegram-desktop
    localsend

    libreoffice
    zola
    mendeley

    inkscape
    # drawio
    dosbox-staging
  ];

}

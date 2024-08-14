{ pkgs, var, ... }:{

environment.systemPackages = with pkgs; [
  kitty
  
  firefox
  dconf-editor
] ++ ( if var.init
  then [ ]
  else [
    obsidian
    transmission_4-gtk

    telegram-desktop
    discord
    localsend

    onlyoffice-bin

    openscad
    inkscape
    drawio
    dosbox-x
  ]
);

}

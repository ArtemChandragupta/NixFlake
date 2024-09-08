{ pkgs, var, ... }:{

environment.systemPackages = with pkgs; [
  kitty
] ++ ( if var.init
  then [ ]
  else [
    obsidian
    transmission_4-gtk

    telegram-desktop
    discord
    localsend

    onlyoffice-bin
    zola
    mendeley

    dconf-editor
 
    openscad
    inkscape
    drawio
    dosbox-x
  ]
);

}

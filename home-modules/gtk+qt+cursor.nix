{ pkgs, ... }:{
  gtk = {
    enable = true;
    theme = {
      name = "Gruvbox-Dark-B";
      package = pkgs.gruvbox-gtk-theme;
    };
    iconTheme = {
      name = "Mint-Y-Sand";
      package = pkgs.cinnamon.mint-y-icons;
    };
  };
  
  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style.package = pkgs.adwaita-qt;
  };

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Original-Classic";
    size = 24;
  };
}

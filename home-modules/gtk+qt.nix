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
  platformTheme = "gtk";
  style.package = pkgs.adwaita-qt;
};

}

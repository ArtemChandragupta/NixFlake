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
  cursorTheme = {
    name = "Bibata-Original-Classic";
    package = pkgs.bibata-cursors;
  };
};

qt = {
  enable = true;
  platformTheme = "gtk";
};
    
}

{ pkgs, ... }:{

stylix = {
  polarity = "dark";
  base16Scheme = {
    base00 = "282828";
    base01 = "1d2021";
    base02 = "504945";
    base03 = "665c54";
    base04 = "bdae93";
    base05 = "d5c4a1";
    base06 = "ebdbb2";
    base07 = "fbf1c7";
    base08 = "fb4934";
    base09 = "fe8019";
    base0A = "458588";
    base0B = "b8bb26";
    base0C = "8ec07c";
    base0D = "83a598";
    base0E = "d3869b";
    base0F = "d65d0e";
  }; 
  targets.gtk.enable = true;
  
  cursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Original-Classic";
    size = 24;
  };
  
  fonts = {
    sizes = {
      applications = 12;
      terminal = 12;
      desktop = 12;
      popups = 12;
    };
  };
};

gtk = {
  enable = true;
  iconTheme = {
    name = "Mint-Y-Sand";
    package = pkgs.cinnamon.mint-y-icons;
  };
};

}

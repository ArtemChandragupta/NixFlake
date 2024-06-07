{ pkgs, ... }:{

gtk = {
  enable = true;
  iconTheme = {
    name = "Mint-Y-Sand";
    package = pkgs.cinnamon.mint-y-icons;
  };
};

}

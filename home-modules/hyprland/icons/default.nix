{ pkgs, ... }:{

gtk.iconTheme = {
  name = "Gruvbox Plus Dark";
  package = pkgs.callPackage ./gruvbox-plus-dark.nix { };
};

xdg.desktopEntries = {
  Helix = {
    name      = "Helix";
    noDisplay = true;
  };
  nvim = {
    name      = "NeoVim";
    noDisplay = true;
  };
  bottom = {
    name      = "bottom";
    noDisplay = true;
  };
  yazi = {
    name      = "yazi";
    noDisplay = true;
  };
  cups = {
    name      = "Printing";
    noDisplay = true;
  };
};

# For entries that do not prioritized well with first option
home.file = {
  ".local/share/applications/rofi-theme-selector.desktop".text = /*toml*/''
    [Desktop Entry]
    Type=Application
    Name=Rofi Theme Selector
    NoDisplay=true
  '';
  ".local/share/applications/rofi.desktop".text = /*toml*/''
    [Desktop Entry]
    Type=Application
    Name=Rofi
    NoDisplay=true
  '';
};

}

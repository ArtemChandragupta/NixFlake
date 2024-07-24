{ pkgs, ...}:{

home = {
  packages = [ pkgs.clipse ];
  file = {
    ".config/clipse/gruvbox.json".text = builtins.toJSON {
      useCustomTheme = true;
      
      DimmedDesc = "#928374";
      DimmedTitle = "#928374";
      
      NormalDesc = "#444444";
      NormalTitle = "#458588";
      
      SelectedDesc = "#444444";
      SelectedTitle = "#cc241d";
      
      SelectedBorder = "#000000";
      SelectedDescBorder = "#cc241d";
    };
    ".config/clipse/config.json".text = builtins.toJSON {
      historyFile = "hystory.json";
      maxHistory = 200;
      allowDuplicates = false;
      themeFile = "gruvbox.json";
      tempDir = "tmp_files";
      logFile = "clipse.log";
    };
  };
};

wayland.windowManager.hyprland.settings.windowrulev2 = [
  "float,class:(clipse)"
  "size 622 652,class:(clipse)"
];

}

{ pkgs, ...}:{

home = {
  packages = [ pkgs.clipse ];
  file = {
    ".config/clipse/gruvbox.json".text = builtins.toJSON {
      useCustomTheme = true;

      TitleFore = "#b8bb26";
      TitleInfo = "#555555";
      StatusMsg = "#cc241d";
      DimmedDesc  = "#928374";
      DimmedTitle = "#928374";
      NormalDesc  = "#444444";
      NormalTitle = "#989899";
      SelectedTitle      = "#458588";
      SelectedDesc       = "#555555";
      SelectedDescBorder = "#458588";
      PageActiveDot   = "#b8bb26";
      PageInactiveDot = "#555555";
      DividerDot = "#b8bb26";
      HelpKey    = "#b8bb26";
      HelpDesc   = "#555555";
      PreviewBorder = "#458588";
      PreviewedText = "#989899";
    };
    ".config/clipse/config.json".text = builtins.toJSON {
      historyFile = "hystory.json";
      maxHistory  = 400;
      allowDuplicates = false;
      themeFile = "gruvbox.json";
      tempDir   = "tmp_files";
      logFile   = "clipse.log";
    };
  };
};

wayland.windowManager.hyprland.settings = {
  windowrulev2 = [
    "float,class:(clipse)"
    "size 800 800,class:(clipse)"
  ];
};

}

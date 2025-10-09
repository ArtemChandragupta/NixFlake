{ pkgs, ...}:
let
  open-clip = pkgs.writers.writeNuBin "open-clip"
    "focusCursor center | kitty -o font_size=15 -o background_opacity=0.95 --class clipse -e 'clipse'";
in{

home.packages = [
  pkgs.wl-clipboard
  open-clip
];

services.clipse = {
  enable = true;
  # historySize = 400;
  imageDisplay.type = "kitty";
  theme = {
    DimmedDesc         = "#928374";
    DimmedTitle        = "#928374";
    DividerDot         = "#b8bb26";
    HelpDesc           = "#555555";
    HelpKey            = "#b8bb26";
    NormalDesc         = "#444444";
    NormalTitle        = "#989899";
    PageActiveDot      = "#b8bb26";
    PageInactiveDot    = "#555555";
    PreviewBorder      = "#458588";
    PreviewedText      = "#989899";
    SelectedDesc       = "#555555";
    SelectedDescBorder = "#458588";
    SelectedTitle      = "#458588";
    StatusMsg          = "#cc241d";
    TitleFore          = "#b8bb26";
    TitleInfo          = "#555555";
    useCustomTheme     = true;
  };
};

wayland.windowManager.hyprland.settings = {
  windowrulev2 = [
    "float,        class:(clipse)"
    "size 800 800, class:(clipse)"
  ];
};

}

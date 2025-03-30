{

programs.zathura = {
  enable  = true;
  options = {
    font = "JetBrainsMono Nerd Font 16";
    guioptions   = "";
    statusbar-home-tilde = true;
    statusbar-basename   = true;
    selection-clipboard  = "clipboard";
    render-loading       = false;

    default-bg = "#282828";
    default-fg = "#EBDBB2";

    inputbar-bg  = "#282828";
    inputbar-fg  = "#EBDBB2";
    statusbar-bg = "#282828";
    statusbar-fg = "#EBDBB2";

    completion-bg           = "#282828";
    completion-fg           = "#EBDBB2";
    completion-highlight-bg = "#98971A";
    completion-highlight-fg = "#282828";

    highlight-color        = "rgba(152,151,26,0.5)";
    highlight-active-color = "rgba(121,116,14,0.5)";

    index-bg        = "#282828";
    index-fg        = "#EBDBB2";
    index-active-bg = "#98971A";
    index-active-fg = "#282828";

    notification-warning-bg = "#D79921";
    notification-warning-fg = "#282828";
    notification-error-bg   = "#CC241D";
    notification-error-fg   = "#282828";
    notification-bg         = "#282828";
    notification-fg         = "#EBDBB2";

    recolor-lightcolor = "#282828";
    recolor-darkcolor  = "#EBDBB2";
    recolor-keephue    = true;
  };
  extraConfig = ''
    map <C-к> recolor
    map <C-т> toggle_statusbar
    map й quit
    map . focus_inputbar
  '';
};

}

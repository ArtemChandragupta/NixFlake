{
programs.zathura = {
  enable = true;
  options = {
    ### Settings from original zathurarc ###
    pages-per-row = "1";
    scroll-page-aware = "true";
    scroll-full-overlap = "0.01";
    scroll-step = "100";
    font = "JetbrainsMono Nerd Font 11";
    # Gruvbox Theme
          # Allow recolor
          recolor = "true";
    
          # Don't allow original hue when recoloring
          recolor-keephue = "true";
        
          # Don't keep original image colors while recoloring
          recolor-reverse-video = "false";
      
          default-fg = "#ebdbb2";
          default-bg = "rgba(29, 32, 33, 0.95)";
      
          completion-bg	= "#1d2021";
          completion-fg	= "#ebdbb2";
          completion-highlight-bg	= "#1d2021";
          completion-highlight-fg	= "#ebdbb2";
          completion-group-bg	= "#1d2021";
          completion-group-fg	= "#8ec07c";
      
          statusbar-fg = "#ebdbb2";
          statusbar-bg = "#1d2021";
      
          notification-bg	= "#1d2021";
          notification-fg	= "#ebdbb2";
          notification-error-bg	= "#1d2021";
          notification-error-fg	= "#cc241d";
          notification-warning-bg	= "#1d2021";
          notification-warning-fg	=  "#FAE3B0";
      
          inputbar-fg = "#ebdbb2";
          inputbar-bg = "#1d2021";
      
          recolor-lightcolor = "rgba(0, 0, 0, 0)";
          recolor-darkcolor	 = "#ebdbb2";
      
          index-fg = "#ebdbb2";
          index-bg = "#1d2021";
          index-active-fg = "#ebdbb2";
          index-active-bg = "#1d2021";
      
          render-loading-bg	= "#1d2021";
          render-loading-fg	= "#ebdbb2";
     
          highlight-color = "#3c3836";
          highlight-fg = "#ebdbb2";
          highlight-active-color = "#ebdbb2";
  };
};
}

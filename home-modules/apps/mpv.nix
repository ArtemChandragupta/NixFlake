{ pkgs, ... }:{

programs.mpv = {
  enable = true;
  scripts = with pkgs.mpvScripts; [
    uosc
    thumbfast
    mpv-cheatsheet
  ];
  config = {
    osc       = false;
    border    = false;
    osd-bar   = false;
    loop-file = "inf";
    osd-font  = "JetBrainsMono Nerd Font";
    osd-color = "#EBDBB2";
    target-colorspace-hint = "no";
    # profile   = "high-quality";
    # video-sync= "display-resample";
  };
  scriptOpts.uosc = {
    top_bar     = "never";
    font_scale  = 1.5;
    text_border = 0;
    color       = "foreground=EBDBB2,foreground_text=282828,background=282828,background_text=EBDBB2";
    controls    = "menu,space,shuffle,loop-playlist,loop-file,gap,prev,items,next";
  };
};

}

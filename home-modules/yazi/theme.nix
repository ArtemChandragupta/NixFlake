{

programs.yazi.theme = {

  manager = {
    cwd = { fg = "#b8bb26"; };

    hovered         = { bg = "#3c3836"; fg = "#ebdbb2"; };
    preview_hovered = { underline = true; };

    find_keyword  = { fg = "#b8bb26"; italic = true; };
    find_position = { fg = "#fe8019"; bg = "reset"; italic = true; };

    marker_selected = { fg = "#b8bb26"; bg = "#b8bb26"; };
    marker_copied   = { fg = "#b8bb26"; bg = "#b8bb26"; };
    marker_cut      = { fg = "#fb4934"; bg = "#fb4934"; };

    tab_active   = { fg = "#282828"; bg = "#504945"; };
    tab_inactive = { fg = "#a89984"; bg = "#3c3836"; };
    tab_width    = 1;

    border_symbol = "│";
    border_style  = { fg = "#665c54"; };
  };

  status = {
    separator_open  = "";
    separator_close = "";
    separator_style = { fg = "#3c3836"; bg = "#3c3836"; };

    mode_normal = { fg = "#282828"; bg = "#458588"; bold = true; };
    mode_select = { fg = "#282828"; bg = "#b8bb26"; bold = true; };
    mode_unset  = { fg = "#282828"; bg = "#d3869b"; bold = true; };

    progress_label  = { fg = "#ebdbb2"; bold = true; };
    progress_normal = { fg = "#504945"; bg = "#3c3836"; };
    progress_error  = { fg = "#fb4934"; bg = "#3c3836"; };

    permissions_t = { fg = "#504945"; };
    permissions_r = { fg = "#b8bb26"; };
    permissions_w = { fg = "#fb4934"; };
    permissions_x = { fg = "#b8bb26"; };
    permissions_s = { fg = "#665c54"; };
  };

  input = {
    border   = { fg = "#ebdbb2"; };
    title    = {};
    value    = {};
    selected = { reversed = true; };
  };

  select = {
    border   = { fg = "#504945"; };
    active   = { fg = "#fe8019"; };
    inactive = {};
  };

  tasks = {
    border  = { fg = "#504945"; };
    title   = {};
    hovered = { underline = true; };
  };

  which = {
    mask            = { bg = "#3c3836"; };
    cand            = { fg = "#83a598"; };
    rest            = { fg = "#928374"; };
    desc            = { fg = "#fe8019"; };
    separator       = "  ";
    separator_style = { fg = "#504945"; };
  };

  help = {
    on      = { fg = "#fe8019"; };
    exec    = { fg = "#83a598"; };
    desc    = { fg = "#928374"; };
    hovered = { bg = "#504945"; bold = true; };
    footer  = { fg = "#3c3836"; bg = "#a89984"; };
  };

};

}

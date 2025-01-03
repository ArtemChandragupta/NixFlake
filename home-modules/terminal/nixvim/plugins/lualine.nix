{

programs.nixvim.plugins.lualine = { # Statusline
  enable = true;
  settings.options.icons_enabled = false;
};

# For transparent parts of statusline
programs.nixvim.extraConfigVim = ''
  hi! link StatusLine Normal
  hi! link StatusLineNC Normal
'';

}

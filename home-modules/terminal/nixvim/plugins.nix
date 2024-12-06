{ pkgs, ... }:{

programs.nixvim.plugins = {
  lualine = { # Statusline
    enable = true;
    settings.options.icons_enabled = false;
  };
  nvim-autopairs.enable   = true; # Automatic {}
  nvim-colorizer = {
    enable   = true; # Colored color codes
    userDefaultOptions = {
      RGB      = true;
      RRGGBB   = true;
      RRGGBBAA = true;
      rgb_fn   = true;
      css      = true;
      names    = false;
    };
  };
  indent-blankline.enable = true; # Vertical indent line
  comment.enable  = true; # To comment line on shortcut
  wrapping.enable = true; # To wrap lines in LaTeX

  luasnip = {
    enable = true;
    settings = {
      enable_autosnippets  = true;
      store_selection_keys = "<Tab>";
    };
    fromLua = [{ paths = "~/nix/home-modules/terminal/nixvim/lua"; }];
  };

  zen-mode = {
    enable = true;
    settings = {
      window.options = {
        signcolumn     = "no";
        number         = false;
        relativenumber = false;
        cursorline     = false;
        cursorcolumn   = false;
        foldcolumn     = "0";
        list           = false;
      };
    };
  };
};

programs.nixvim = {
  extraPlugins = with pkgs.vimPlugins; [
  ];

  extraConfigLua = '''';
};

programs.nixvim.extraConfigVim = ''
  " Expand or jump in insert mode
  imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

  " Jump forward through tabstops in visual mode
  smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

  " Jump backward through snippet tabstops with Shift-Tab
  imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
  smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
'';

}

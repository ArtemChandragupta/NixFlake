{

programs.nixvim.plugins = {
  nvim-autopairs.enable   = true; # Automatic {}
  plugins.image.enable    = true; # Images in nvim!
  indent-blankline.enable = true; # Vertical indent line
  comment.enable  = true; # To comment line on shortcut
  wrapping.enable = true; # To wrap lines in LaTeX

  lualine = { # Statusline
    enable = true;
    settings.options.icons_enabled = false;
  };

  colorizer = {
    enable   = true; # Colored color codes
    settings.user_default_options = {
      RGB      = true;
      RRGGBB   = true;
      RRGGBBAA = true;
      rgb_fn   = true;
      css      = true;
      names    = false;
    };
  };

  web-devicons.enable = true; # Neo-tree need this 
  neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    buffers.followCurrentFile.enabled = true;
  };

  lazygit = {
    enable = true;
    settings.floating_window_border_chars = [
      "╭"
      "─"
      "╮"
      "│"
      "╯"
      "─"
      "╰"
      "│"
    ];
  };

  luasnip = {
    enable = true;
    settings = {
      enable_autosnippets  = true;
      store_selection_keys = "<Tab>";
    };
    fromLua = [{ paths = "~/nix/home-modules/terminal/nixvim/lua"; }];
  };

  # blink-cmp = {
  #   enable = true;
  #   settings = {
  #     keymap = {
  #     "<C-b>" = [
  #       "scroll_documentation_up"
  #       "fallback"
  #     ];
  #     "<C-e>" = [
  #       "hide"
  #     ];
  #     "<C-f>" = [
  #       "scroll_documentation_down"
  #       "fallback"
  #     ];
  #     "<C-n>" = [
  #       "select_next"
  #       "fallback"
  #     ];
  #     "<C-p>" = [
  #       "select_prev"
  #       "fallback"
  #     ];
  #     "<C-space>" = [
  #       "show"
  #       "show_documentation"
  #       "hide_documentation"
  #     ];
  #     "<C-y>" = [
  #       "select_and_accept"
  #     ];
  #     "<C-Down>" = [
  #       "select_next"
  #       "fallback"
  #     ];
  #     "<S-Tab>" = [
  #       "snippet_backward"
  #       "fallback"
  #     ];
  #     "<Tab>" = [
  #       "snippet_forward"
  #       "fallback"
  #     ];
  #     "<C-Up>" = [
  #       "select_prev"
  #       "fallback"
  #     ];
  #     };
  #   };
  # };

  zen-mode = {
    enable = true;
    settings.window.options = {
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

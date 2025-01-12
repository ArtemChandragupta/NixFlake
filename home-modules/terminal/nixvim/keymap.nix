{

programs.nixvim = {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    { mode = "v"; key = "<y>"; action = ''"+y"''; }
    { mode = "c"; key = "<Ж>"; action = ":";      }

    { mode = "i"; lua = true; key = "<C-v>"; action = ''
        function ()
          vim.api.nvim_paste(vim.fn.getreg('+'), true, -1)
        end
      '';
    }
  ];
  extraConfigVim = '' 
    inoremap <expr> <Esc> col('.') == 1 ? "<Esc>" : "<Esc>l"

    cnoreabbrev Q q
    cnoreabbrev Wq wq
    cnoreabbrev Q! q!
    cnoreabbrev W w

    cnoreabbrev Й q
    cnoreabbrev й q
    cnoreabbrev ц w
    cnoreabbrev Ц w
    cnoreabbrev й! q!
    cnoreabbrev Й! q
    cnoreabbrev цй wq
    cnoreabbrev Цй wq
  '';
};

}

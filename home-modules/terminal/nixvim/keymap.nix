{

programs.nixvim = {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    { mode = "v"; key = "<y>"; action = ''"+y"''; }

    { mode = "i"; lua = true; key = "<C-v>"; action = ''
        function ()
          vim.api.nvim_paste(vim.fn.getreg('+'), true, -1)
        end
      '';
    }
  ];
  extraConfigVim = '' 
    inoremap <expr> <Esc> col('.') == 1 ? "<Esc>" : "<Esc>l"
  '';
};

}

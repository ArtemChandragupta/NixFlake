{

programs.nixvim = {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    { mode = "v"; key = "<y>"; action = ''"+y"''; }
    { mode = "v"; key = "н";   action = ''"+y"''; }

    { mode = "n"; key = "Ж";   action = ":";      }
    { mode = "n"; key = "ш";   action = "i";      }
    { mode = "n"; key = "м";   action = "v";      }
    { mode = "n"; key = "г";   action = "u";      }

    { mode = "n"; key = "в";   action = "d";      }
    { mode = "o"; key = "в";   action = "d";      }
    { mode = "v"; key = "в";   action = "d";      }

    { mode = "i"; lua = true; key = "<C-v>"; action = ''
        function ()
          vim.api.nvim_paste(vim.fn.getreg('+'), true, -1)
        end
      '';
    }
    { mode = "i"; lua = true; key = "<C-м>"; action = ''
        function ()
          vim.api.nvim_paste(vim.fn.getreg('+'), true, -1)
        end
      '';
    }
  ];
  extraConfigVim = '' 
    inoremap <expr> <Esc> col('.') == 1 ? "<Esc>" : "<Esc>l"
    imap <silent> <Down> <C-o>gj
    imap <silent> <Up> <C-o>gk

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

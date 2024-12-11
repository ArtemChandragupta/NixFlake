{

programs.nixvim = {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    { mode = [ "n" "v" ];     key = "<y>";   action = ''"+y"''; }
    { mode = "i"; lua = true; key = "<C-v>"; action = ''
        function ()
          vim.api.nvim_paste(vim.fn.getreg('+'), true, -1)
        end
      '';
    }
    # { mode = "i"; key = "<Down>";         action = "<C-o>gj";                 }
    # { mode = "i"; key = "<Up>";           action = "<C-o>gk";                }
    { mode = "n"; key = "<localleader>w"; action = "<cmd>ToggleWrapMode<CR>"; }
    { mode = "n"; key = "<localleader>v"; action = "<cmd>VimtexView<CR>";     }
    { mode = "n"; key = "<localleader>z"; action = "<cmd>ZenMode<CR>";        }
    { mode = "n"; key = "<C-c>";   action = "gcc"; options.remap = true;      }
    { mode = "v"; key = "<C-c>";   action = "gc";  options.remap = true;      }
  ];
};

}

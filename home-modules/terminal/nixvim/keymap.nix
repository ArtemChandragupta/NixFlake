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
    { mode = "n";     key = "<C-c>";   action = "gcc"; options.remap = true; }
    { mode = "v";     key = "<C-c>";   action = "gc";  options.remap = true; }
  ];
};

}

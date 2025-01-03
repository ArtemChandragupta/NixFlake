{

programs.nixvim.plugins.zen-mode = {
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

programs.nixvim.keymaps = [{ 
  mode   = "n";
  key    = "<localleader>z"; 
  action = "<cmd>ZenMode<CR>";
}];

}

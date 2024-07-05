{

programs.nixvim = {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    { mode = [ "n" "v" ]; key = "<C-S-c>"; action = ''"+y'';      }
    { mode = [ "n" "v" ]; key = "<C-S-v>"; action = ''"+p'';      }
    { mode = "i";         key = "<C-S-v>"; action = ''<C-O>"+p''; }
  ];
};

}

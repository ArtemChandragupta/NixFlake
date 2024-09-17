{

programs.nixvim = {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    { mode = [ "n" "v" ]; key = "<y>";   action = ''"+y'';      }
    { mode = "i";         key = "<C-v>"; action = ''"+p''; }
  ];
};

}

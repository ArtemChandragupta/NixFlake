{

programs.nixvim.plugins = {
  comment.enable  = true; # To comment line on shortcut
};

programs.nixvim = {
  keymaps = [
    { mode = "n"; key = "<C-c>"; action = "gcc"; options.remap = true; }
    { mode = "v"; key = "<C-c>"; action = "gc";  options.remap = true; }
  ];
};

}

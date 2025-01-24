{

programs.nixvim.plugins = {
  comment.enable = true; # To comment line on shortcut
};

programs.nixvim = {
  keymaps = [
    { mode = "n"; key = "<C-c>"; action = "gcc"; options.remap = true; }
    { mode = "v"; key = "<C-c>"; action = "gc";  options.remap = true; }
    { mode = "n"; key = "<C-с>"; action = "gcc"; options.remap = true; }
    { mode = "v"; key = "<C-с>"; action = "gc";  options.remap = true; }
  ];
};

}

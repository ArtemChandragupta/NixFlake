{

programs.nixvim.plugins = {
  wrapping.enable = true; # To wrap lines in text
};

programs.nixvim.autoCmd = [
  {
    # command = "setlocal wrap";
    command = "ToggleWrapMode";
    pattern = ["*.md" "*.typ"];
    # group   = "group";
    event   = ["BufEnter"];
  }
];

programs.nixvim.keymaps = [
  {
    mode   = "n";
    key    = "<localleader>w";
    action = "<cmd>ToggleWrapMode<CR>";
  }
  {
    mode   = "n";
    key    = "<localleader>ц";
    action = "<cmd>ToggleWrapMode<CR>";
  }
];

}

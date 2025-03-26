{

programs.nixvim.plugins = {
  wrapping.enable = true; # To wrap lines in text
};

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

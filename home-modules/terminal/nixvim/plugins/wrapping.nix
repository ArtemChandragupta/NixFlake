{

programs.nixvim = {
  plugins.wrapping.enable = true; # To wrap lines in text

  keymaps = [{
    mode   = "n";
    key    = "<localleader>w";
    action = "<cmd>ToggleWrapMode<CR>";
  }];
};

}

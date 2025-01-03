{

programs.nixvim.plugins.lazygit = {
  enable = true;
  settings.floating_window_border_chars = [
    "╭"
    "─"
    "╮"
    "│"
    "╯"
    "─"
    "╰"
    "│"
  ];
};

programs.nixvim.keymaps = [{
  mode   = "n";
  key    = "<localleader>g";
  action = "<cmd>LazyGit<CR>";
}];

}

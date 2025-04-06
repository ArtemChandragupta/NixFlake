{

programs.nixvim.plugins.lazygit = {
  enable = true;
  settings.floating_window_scaling_factor =  0.9;
  settings.floating_window_border_chars = [
    "┌"
    "─"
    "┐"
    "│"
    "┘"
    "─"
    "└"
    "│"
  ];
};

programs.nixvim.keymaps = [
  {
    mode   = "n";
    key    = "<localleader>g";
    action = "<cmd>LazyGit<CR>";
  }
  {
    mode   = "n";
    key    = "<localleader>п";
    action = "<cmd>LazyGit<CR>";
  }
];

}

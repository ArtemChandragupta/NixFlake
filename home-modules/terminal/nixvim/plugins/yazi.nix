{

programs.nixvim.plugins = {
  yazi.enable = true; # Yazi filemanager!
};

programs.nixvim.keymaps = [{ 
  mode   = "n";
  key    = "<localleader>y";
  action = "<cmd>Yazi<CR>";
}];

}

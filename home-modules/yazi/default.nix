{

imports = [
  ./icons.nix
  ./keymap.nix
  ./opener.nix
  ./theme.nix
];

programs.yazi = {
  enable = true;

  settings.manager = {
    layout = [ 1 4 3 ];
    sort_by = "alphabetical";
    sort_sensitive = false;
    sort_reverse   = false;
    sort_dir_first = true;
    linemode = "mtime";
    show_hidden  = false;
    show_symlink = true;
  };

  plugins = {
    "smart-enter" = ./lua/smart-enter;
    "starship"    = ./lua/starship;
  };
  initLua = ./lua/init.lua;  

};

}

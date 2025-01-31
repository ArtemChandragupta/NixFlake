{ pkgs, ... }:let
  paste = pkgs.writers.writeNuBin "paste" (builtins.readFile ./scripts/paste.nu);
in{

imports = [
  ./filetype.nix
  ./icons.nix
  ./keymap.nix
  ./opener.nix
  ./theme.nix
];

home.packages = [ paste ];

programs.zoxide = {
  enable = true;
  enableNushellIntegration = true;
};

programs.yazi = {
  enable = true;
  enableNushellIntegration = true;

  settings.manager = {
    layout = [ 1 4 3 ];
    sort_by = "alphabetical";
    sort_sensitive = false;
    sort_reverse   = false;
    sort_dir_first = true;
    show_hidden  = false;
    show_symlink = true;
    linemode = "mtime";
  };

  plugins = {
    "smart-enter" = ./lua/smart-enter;
    "full-border" = ./lua/full-border;
    "starship"    = ./lua/starship;
  };
  initLua = ./lua/init.lua;
};

}

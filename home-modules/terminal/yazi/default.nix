{ pkgs, ... }:
let
  paste = pkgs.writers.writeNuBin "paste" (builtins.readFile ./paste.nu);
in{

imports = [
  ./filetype.nix
  ./icons.nix
  ./keymap.nix
  ./opener.nix
  ./plugins.nix  
  ./theme.nix
];

home.packages = [ paste pkgs.ouch ];

programs.zoxide = {
  enable = true;
  enableNushellIntegration = true;
};

programs.yazi = {
  enable = true;
  enableNushellIntegration = true;

  settings.mgr = {
    layout = [ 1 4 3 ];
    sort_by = "alphabetical";
    sort_sensitive = false;
    sort_reverse   = false;
    sort_dir_first = true;
    show_hidden  = false;
    show_symlink = true;
    linemode = "mtime";
  };
};

}

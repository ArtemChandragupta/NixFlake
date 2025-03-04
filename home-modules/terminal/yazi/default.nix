{ pkgs, ... }:let
  paste = pkgs.writers.writeNuBin "paste" (builtins.readFile ./paste.nu);
in{

imports = [
  ./filetype.nix
  ./icons.nix
  ./keymap.nix
  ./opener.nix
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
    "ouch"        = ./lua/ouch;
  };
  initLua = ./lua/init.lua;
  settings.plugin.prepend_previewers = [
      { mime = "application/*zip";            run = "ouch"; }
      { mime = "application/x-tar";           run = "ouch"; }
      { mime = "application/x-bzip2";         run = "ouch"; }
      { mime = "application/x-7z-compressed"; run = "ouch"; }
      { mime = "application/x-rar";           run = "ouch"; }
      { mime = "application/x-xz";            run = "ouch"; }
  ];
};

}

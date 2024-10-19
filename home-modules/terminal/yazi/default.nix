{

imports = [
  ./filetype.nix
  ./icons.nix
  ./keymap.nix
  ./opener.nix
  ./theme.nix
];

nix.settings = {
  extra-substituters = [ "https://yazi.cachix.org" ];
  extra-trusted-public-keys = [
    "yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k="
  ];
};

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
    "starship"    = ./lua/starship;
  };
  initLua = ./lua/init.lua;
};

}

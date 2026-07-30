{

programs.yazi.theme = {
  icon = {
    globs = [];
    dirs  = [];
    files = [];
    exts  = [];
    conds = [];
  };
  filetype.rules = [
    { url = "*home.nix"; fg = "#d65d0e"; }
    { url = "*default.nix"; fg = "#d65d0e"; }
    { url = "*";  fg = "#a89984"; }
    { url = "*/"; fg = "#458588"; }
  ];
};

}

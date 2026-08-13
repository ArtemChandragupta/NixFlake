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
    # { url = "*";  fg = "#a89984"; }
    # { url = "*/"; fg = "#458588"; }

    { url = "*home.nix"; fg = "#d65d0e"; }
    { url = "*default.nix"; fg = "#d65d0e"; }

    { mime = "image/*"; fg = "yellow"; }
    { mime = "{audio,video}/*"; fg = "magenta"; }
    { mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}"; fg = "red"; }
    { mime = "application/{pdf,doc,rtf}"; fg = "cyan"; }
  ];
};

}

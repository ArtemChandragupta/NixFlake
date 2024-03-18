{
programs.yazi = {
enable = true;

settings = {
  manager = {
    layout = [ 1 4 3 ];
    sort_by = "alphabetical";
    sort_sensitive = false;
    sort_reverse = false;
    sort_dir_first = true;
    linemode = "none";
    show_hidden = false;
    show_symlink = true;
  };
      
};
};

imports = [
  ./opener.nix
  ./theme.nix
];

}

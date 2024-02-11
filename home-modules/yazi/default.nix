{ config, pkgs, ... }:
{

  # yazi file manager
  programs.yazi = {
    enable = true;


    settings = {
      manager = {
        layout = [ 1 4 3 ];
        sort_by = "alphabetical";
        sort_sensitive = true;
        sort_reverse = false;
        sort_dir_first = true;
        linemode = "none";
        show_hidden = true;
        show_symlink = true;
      };
    };
  };
}

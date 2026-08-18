{ pkgs, ... }:{

programs.helix = {
  extraPackages = [ pkgs.markdown-oxide ];
};

}

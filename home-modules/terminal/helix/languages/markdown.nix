{ pkgs, ... }:{

programs.helix = {
  extraPackages = [ pkgs.markdown-oxide ];  
  languages = {
    
    language = [{
      name = "markdown";
      soft-wrap.enable = true;
    }];
    
  };
};

}

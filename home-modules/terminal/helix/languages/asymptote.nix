{ pkgs, ... }:{

programs.helix = {
  languages = {
    
    language = [{
      name = "asymptote";
      scope = "source.asy";
      file-types = ["asy"];
      comment-tokens = "//";
      soft-wrap.enable = true;
    }];
    
  };
};

}

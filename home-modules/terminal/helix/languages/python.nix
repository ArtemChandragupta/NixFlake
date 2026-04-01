{ pkgs, ... }:{

programs.helix = {
  languages = {
    
    language = [{
      name = "python";
      soft-wrap.enable = true;
    }];
    
  };
};

}

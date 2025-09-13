{ pkgs, ... }:{

programs.helix = {
  extraPackages = [ pkgs.tinymist ];
  languages = {
    
    language = [{
      name = "typst";
      soft-wrap.enable = true;
      language-servers = [
        "tinymist"
      ];
    }];
    
    language-server = {
      tinymist.config = {
        typstExtraArgs = [ "main.typ" ]; # maybe I need set this in typst projects
        exportPdf = "onType";
      };
    };

  };
};

}

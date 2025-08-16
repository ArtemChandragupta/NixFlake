{ pkgs, ... }:{

programs.helix = {
  extraPackages = [ pkgs.tinymist pkgs.ltex-ls-plus];
  languages = {
    
    language = [{
      name = "typst";
      soft-wrap.enable = true;
      language-servers = ["tinymist" "ltex"];
    }];
    
    language-server = {
      tinymist.config = {
        typstExtraArgs = [ "main.typ" ]; # maybe I need set this in typst projects
        exportPdf = "onType";
      };
      ltex = {
        command = "ltex-ls-plus";
        config = {
          ltex.enabled = false;
          ltex.language = "ru-RU";
        };
      };
    };

  };
};

}

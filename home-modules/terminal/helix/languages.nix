{ pkgs, ... }:{

programs.helix = {
  extraPackages = with pkgs; [
    nixd
    tinymist
    rust-analyzer
    vscode-langservers-extracted
    ruff
  ];
  languages = {
    language = [
      {
        name = "typst";
        soft-wrap.enable = true;
      }
    ];
    language-server = {
      tinymist = {
        config = {
          typstExtraArgs = ["main.typ"]; # maybe I need do this in typst projects
          exportPdf = "onType";
          preview.background = {
            # enabled = true;
            args = [
              "--invert-colors=never"
              "--open"
            ];
          };
        };
      };
    };
  };
};

}

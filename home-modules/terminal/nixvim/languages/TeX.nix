{ pkgs, ... }:{

programs.nixvim.plugins = {
  lsp.servers.texlab = {
    enable = true;
  };
  vimtex = {
    enable = true;
    settings = {
      compiler_method = "tectonic";
      highlight.enable = false;
      view_method = "zathura";
    };
  };
  treesitter.grammarPackages = [
    pkgs.vimPlugins.nvim-treesitter.builtGrammars.latex
  ];
};

}

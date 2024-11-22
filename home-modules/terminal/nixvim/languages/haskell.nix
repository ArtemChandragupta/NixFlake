{ pkgs, ... }:{

programs.nixvim.plugins = {
  lsp.servers.hls = {
    enable = true;
    installGhc = false; # To remove warning
  };
  treesitter.grammarPackages = [
    pkgs.vimPlugins.nvim-treesitter.builtGrammars.haskell
  ];
};

}

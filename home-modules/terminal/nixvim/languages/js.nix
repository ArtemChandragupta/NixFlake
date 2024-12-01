{ pkgs, ... }:{

programs.nixvim.plugins = {
  lsp.servers.ts_ls = {
    enable = true;
  };
  treesitter.grammarPackages = [
    pkgs.vimPlugins.nvim-treesitter.builtGrammars.javascript
    pkgs.vimPlugins.nvim-treesitter.builtGrammars.tsx
  ];
};

}

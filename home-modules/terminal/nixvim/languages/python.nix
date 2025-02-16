{ pkgs, ... }:{

programs.nixvim.plugins = {
  lsp.servers.pylsp = {
    enable = true;
    settings.plugins = {
      pyflakes.enabled = true;
    };
  };
  treesitter.grammarPackages = [
    pkgs.vimPlugins.nvim-treesitter.builtGrammars.python
  ];
};

}

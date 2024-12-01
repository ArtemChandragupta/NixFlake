{ pkgs, ... }:{

programs.nixvim.plugins = {
  lsp.servers.nushell = {
    enable = true;
  };
  treesitter.grammarPackages = [
    pkgs.vimPlugins.nvim-treesitter.builtGrammars.nu
  ];
};

}

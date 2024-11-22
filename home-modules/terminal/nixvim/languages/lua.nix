{ pkgs, ... }:{

programs.nixvim.plugins.treesitter.grammarPackages = [
  pkgs.vimPlugins.nvim-treesitter.builtGrammars.lua
];

}

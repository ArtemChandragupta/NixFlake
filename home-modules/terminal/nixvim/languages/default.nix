{ pkgs, ... }:{

imports = [
  ./css.nix
  # ./haskell.nix
  ./js.nix
  ./lua.nix
  ./nushell.nix
  ./python.nix
  ./rust.nix
  # ./TeX.nix
  ./toml.nix
  ./typst.nix
];

programs.nixvim.diagnostics = {
    virtual_lines = true;
  };

programs.nixvim.plugins = {
  lsp = {
    enable = true;
    # servers.nil_ls.enable = true;
    servers.nixd.enable = true;
  };
  nix.enable = true;
  treesitter = {
    enable = true;
    nixGrammars = true;
    grammarPackages = [
      pkgs.vimPlugins.nvim-treesitter.builtGrammars.nix 
    ];
    settings.highlight.enable = true;
  };
};

}

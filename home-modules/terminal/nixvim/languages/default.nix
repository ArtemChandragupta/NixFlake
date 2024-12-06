{ pkgs, ... }:{

imports = [
  ./css.nix
  ./haskell.nix
  ./js.nix
  ./lua.nix
  ./nushell.nix
  ./python.nix
  ./TeX.nix
  ./toml.nix
];

programs.nixvim.plugins = {
  lsp = {
    enable = true;
    servers.nil_ls.enable = true;
  };
  treesitter = {
    enable = true;
    nixGrammars = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      nix
    ];
    settings.highlight.enable = true;
  };
  openscad = {
    enable = true;
  };
  # rainbow-delimiters.enable = true;
};

}

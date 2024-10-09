{ pkgs, ... }:{

imports = [
  ./nushell.nix
  ./TeX.nix
];

programs.nixvim.plugins = {
  lsp = {
    enable = true;
    servers = {
      nil_ls.enable = true;
      hls.enable = true;
    };
  };
  treesitter = {
    enable = true;
    nixGrammars = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      toml
      lua
      nix
      css
      python
      javascript
      haskell
    ];
    settings.highlight.enable = true;
  };
  openscad = {
    enable = true;
  };
  # rainbow-delimiters.enable = true;
};

}

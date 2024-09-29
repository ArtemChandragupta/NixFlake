{ pkgs, ... }:{

imports = [
  ./nushell.nix
  ./TeX.nix
];

programs.nixvim.plugins = {
  lsp = {
    enable = true;
    servers = {
      nil-ls.enable = true;
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
    ];
    settings.highlight.enable = true;
  };
  openscad = {
    enable = true;
  };
  # rainbow-delimiters.enable = true;
};

}

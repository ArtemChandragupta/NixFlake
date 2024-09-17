{ pkgs, ... }:{

home.packages = [
  pkgs.tree-sitter-grammars.tree-sitter-nu
];

programs.nixvim.plugins = {
  lualine.enable = true;          # Statusline
  nvim-autopairs.enable = true;   # Automatic {}
  indent-blankline.enable = true; # Vertical indent line
  nvim-colorizer.enable = true;   # Colored color codes

  lsp = {
    enable = true;
    servers = {
      # ltex.enable = true;
      nil-ls.enable = true;
    };
  };
  # lsp-lines.enable = true;

  vimtex = {
    enable = true;
    settings.highlight = {
      enable = true;
    };
  };
  
  treesitter = {
    enable = true;
    folding = true;
    nixvimInjections = true;
    grammarPackages = [
      pkgs.tree-sitter-grammars.tree-sitter-nu
    ];
    settings = {
      highlight.enable = true;
    };
  };
};

}

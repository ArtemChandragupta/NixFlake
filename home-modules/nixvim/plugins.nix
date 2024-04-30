{
programs.nixvim.plugins = {

  lualine = {
    enable = true;
    sectionSeparators = {
      left  = "";
      right = "";
    };
    componentSeparators = {
      #left = "";
      #right = "";
    };
    sections = {
      lualine_a = [
        {
          separator.left = "";
          separator.right = "";
          extraConfig.padding.right = 2;
          extraConfig.padding.left = 2;
        }
      ];
      lualine_z = [
        {
          separator.right = "";
          extraConfig.padding.left = 2;
          extraConfig.padding.right = 2;
        }
      ];
    };
  };

  nvim-colorizer.enable = true;

  nvim-autopairs.enable = true;

  indent-blankline.enable = true;

  nix.enable = true;

  lint.enable = true;

  treesitter = {
    enable = true;
    indent = true;
    nixGrammars = true;
    nixvimInjections = true;
  };

  lsp = {
    enable = true;
    servers = {
      nil_ls.enable = true;
    };
  };

  lsp-format = {
    enable = true;
    lspServersToEnable = "all";
  };

};
}

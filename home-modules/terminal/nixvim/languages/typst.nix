{ pkgs, ... }:{

programs.nixvim.plugins = {
  lsp.servers.tinymist = {
    enable = true;
    settings = {
      single_file_support = true;
    };
  };
  # treesitter.grammarPackages = [
  #   pkgs.vimPlugins.nvim-treesitter.builtGrammars.typst
  # ];
  typst-vim = {
    enable   = true;
    settings = {
      pdf_viewer   = "zathura";
    }; 
  };
};

programs.nixvim.keymaps = [
  {
    mode   = "n";
    key    = "<localleader>t";
    action = "<cmd>TypstWatch<CR>";
    # action = "<cmd>!job spawn { zathura main.pdf }<CR>";
  }
  {
    mode   = "n";
    key    = "<localleader>е";
    action = "<cmd>TypstWatch<CR>";
    # action = "<cmd>!job spawn { zathura main.pdf }<CR>";
  }
];

}

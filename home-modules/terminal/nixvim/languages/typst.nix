{

programs.nixvim.plugins = {
  lsp.servers.tinymist = {
    enable = true;
    settings = {
      single_file_support = true;
      # exportPdf = "onType";
    };
  };
  typst-vim = {
    enable   = true;
    settings = {
      pdf_viewer   = "zathura";
    }; 
  };
  # markview = {
  #   enable = true;
  #   settings = {
  #     typst = {
  #       enable = true;
  #     };
  #     preview = {
  #       filetypes = [
  #         "typst"
  #         "markdown"
  #       ];
  #     };
  #   };
  # };
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

{

programs.nixvim.plugins = {
  lsp.servers.tinymist = {
    enable = true;
    settings = {
      single_file_support = true;
    };
  };
  typst-vim = {
    enable   = true;
    settings = {
      pdf_viewer   = "zathura";
      # conceal_math = 1;
    }; 
  };
};

programs.nixvim.extraConfigLua = ''
'';

}

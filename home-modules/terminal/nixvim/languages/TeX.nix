{ pkgs, ... }:{

programs.nixvim.plugins = {
  lsp.servers.texlab.enable = true;
  vimtex = {
    enable = true;
    texlivePackage = pkgs.texliveFull;
    settings = {
      compiler_method = "latexmk";
      view_method     = "zathura";
      quickfix_open_on_warning = false;
    };
  };
};

programs.nixvim.extraConfigLua = ''
  vim.g.vimtex_compiler_latexmk = {
    aux_dir = "cache",
    out_dir = "build",
    callback   = 1,
    continuous = 1,
    executable = "latexmk",
    options = {
      -- "-shell-escape", for code blocks?
      "-verbose",
      "-file-line-error",
      "-synctex=1",
      "-interaction=nonstopmode",
    },
  }
'';

programs.nixvim.keymaps = [{ 
  mode   = "n"; 
  key    = "<localleader>v"; 
  action = "<cmd>VimtexView<CR>";
}];

}

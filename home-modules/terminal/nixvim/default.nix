{ inputs, ... }:{

imports = [
  inputs.nixvim.homeManagerModules.nixvim

  ./languages
  ./plugins

  ./keymap.nix
  ./neovide.nix
];

programs.nixvim = {
  enable = true;
  clipboard.providers.wl-copy.enable = true;
  clipboard.register = "unnamedplus";
  luaLoader.enable = true;
  opts = {
    number = true;
    relativenumber = true;

    ignorecase = true;
    incsearch  = true;
    hlsearch   = true;

    conceallevel  = 2;    # For VimTeX - shorten formulas
    concealcursor = "nc"; # For VimTeX - don't show full formula text in normal mode

    wrap          = false;
    breakindent   = true;
    sidescrolloff = 10;
    scrolloff     = 5;

    shiftwidth = 2;
    expandtab = true;
    whichwrap = "<,>,[,]"; # To move cursor from end to new line
    signcolumn = "no";
  };
  colorschemes.gruvbox.enable  = true;
  extraConfigVim = ''
    inoremap <expr> <Esc> col('.') == 1 ? "<Esc>" : "<Esc>l"
  '';
};

}

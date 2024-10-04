{ inputs, ... }:{

imports = [
  inputs.nixvim.homeManagerModules.nixvim

  ./languages
  ./keymap.nix
  ./plugins.nix
];

programs.nixvim = {
  enable = true;
  clipboard.providers.wl-copy.enable = true;
  clipboard.register = "unnamedplus";
  luaLoader.enable = true;
  opts = {
    number = true;
    relativenumber = true;
    wrap = false; 
    shiftwidth = 2;
    sidescrolloff = 10;
    scrolloff     = 5;
    whichwrap = "<,>,[,]";
    signcolumn = "no";
  };
  colorschemes.gruvbox.enable = true;
  extraConfigVim = /*vimsc*/''
    hi! link StatusLine Normal
    hi! link StatusLineNC Normal
  '';
};

}

{ inputs, ... }:{

imports = [
  inputs.nixvim.homeManagerModules.nixvim

  ./plugins.nix
  ./keymap.nix
];

programs.nixvim = {
  enable = true;
  clipboard.providers.wl-copy.enable = true;
  luaLoader.enable = true;
  opts = {
    number = true;
    relativenumber = true;
    cursorline = true;
    shiftwidth = 2;
    scrolloff  = 5;
  };
  colorschemes.gruvbox.enable = true;
  extraConfigVim = /*vimsc*/''
    hi! link StatusLine Normal
    hi! link StatusLineNC Normal
  '';
};

}

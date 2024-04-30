{ inputs, ... }:{
imports = [
  inputs.nixvim.homeManagerModules.nixvim

  ./neovide.nix
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
  highlight = {
    lualine_a_normal.bg = "#000000";
    lualine_a_insert.bg = "#000000";
    lualine_a_command.bg = "#000000";
    StatusLineNC.bg = "#000000";
  };
  colorschemes.gruvbox.enable = true;
    
  extraConfigLua = ''
      --Neovide
    if vim.g.neovide then
      --Neovide options
      vim.g.neovide_transparency = 1
      vim.g.neovide_padding_top  = 10
      vim.g.neovide_padding_left = 10
    end
  '';
  extraConfigVim = ''
    hi! link StatusLine Normal
    hi! link StatusLineNC Normal
  '';
};
}

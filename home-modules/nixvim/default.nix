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

    colorschemes.gruvbox.enable = true;

    extraConfigLua = ''
        --Neovide
      if vim.g.neovide then
        --Neovide options
        vim.g.neovide_transparency = 0.9
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

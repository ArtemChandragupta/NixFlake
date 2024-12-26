{

programs.neovide = {
  enable = true;
  settings.font = {
    normal = ["JetBrainsMono Nerd Font"];
    size   = 16.0;
  };
};

programs.nixvim.extraConfigLua = ''
  vim.g.neovide_padding_top    = 5
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right  = 5
  vim.g.neovide_padding_left   = 5

  vim.g.neovide_floating_blur_amount_x = 0
  vim.g.neovide_floating_blur_amount_y = 0
  vim.g.neovide_floating_shadow        = false
'';

}

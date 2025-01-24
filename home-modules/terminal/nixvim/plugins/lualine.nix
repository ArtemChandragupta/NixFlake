{

programs.nixvim.plugins.lualine = { # Statusline
  enable = true;
  settings = {
    sections = {
      lualine_a = ["mode"];
      lualine_b = ["branch" "diff" "diagnostics"];
      lualine_c = ["filename"];
      lualine_x = ["filetype"];
      lualine_y = ["progress"];
      lualine_z = ["location"];
    };
    options = {
      section_separators = {
        left  = "";
        right = "";
      };
      component_separators = {
        left  = "";
        right = "";
      };
    };
  };
};

# For transparent parts of statusline
# programs.nixvim.extraConfigVim = ''
#   hi! link StatusLine Normal
#   hi! link StatusLineNC Normal
# '';

}

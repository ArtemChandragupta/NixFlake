{ pkgs, ... }:{

programs.nixvim = {
  extraPlugins = [
    pkgs.vimPlugins.img-clip-nvim
  ];
  extraConfigLua = ''
    require("img-clip").setup({
      default = {
        embed_image_as_base64 = false,
        prompt_for_file_name = false,
        drag_and_drop = {
          insert_mode = true,
        },
      },
    })
  '';
};

programs.nixvim.keymaps = [
  { 
    mode   = "n";
    key    = "<localleader>p"; 
    action = "<cmd>PasteImage<CR>";
    options.remap = true;
  }
  { 
    mode   = "n";
    key    = "<localleader>з"; 
    action = "<cmd>PasteImage<CR>";
    options.remap = true;
  }
];

}

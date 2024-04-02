{
programs.yazi.theme = {  
  filetype = {
    rules = [
      { mime = "image/*"; fg = "#83a598"; }
      { mime = "video/*"; fg = "#b8bb26"; }
      { mime = "audio/*"; fg = "#b8bb26"; }

      { mime = "application/zip";             fg = "#d65d0e"; }
      { mime = "application/gzip";            fg = "#d65d0e"; }
      { mime = "application/x-tar";           fg = "#d65d0e"; }
      { mime = "application/x-bzip";          fg = "#d65d0e"; }
      { mime = "application/x-bzip2";         fg = "#d65d0e"; }
      { mime = "application/x-7z-compressed"; fg = "#d65d0e"; }
      { mime = "application/x-rar";           fg = "#d65d0e"; }

      { name = "*"; fg = "#a89984"; }
      { name = "*/"; fg = "#458588"; }
    ];
  };

  icon = {
    prepend_rules = [
      { name = "default.nix"; fg = "#d65d0e"; text = ""; }
      { name = "hyprland/"; text = ""; }
      { name = "Downloads/"; text = ""; }
      { name = "Games/"; text = "󰊖"; }
      { name = "PortProton/"; text = "󰝨"; }
      { name = "media/"; text = ""; }
      { name = "starship.nix"; text = ""; }
      { name = "Documents/"; text = "󱔗"; }
      { name = "studytrash/"; text = "󰗚"; }
      { name = "yazi/"; text = "󰇥"; }
      { name = "nix/"; text = "";}
      { name = "Vaults/"; text = "󰘳"; }
      { name = "virtual/"; text = ""; }
      { name = "gtk+qt.nix"; text = ""; fg = "#7ebae4"; }
      { name = "home.nix"; fg = "#d65d0e"; text = ""; }
      { name = "home-modules/"; text = "󱂵"; }
      { name = "modules/"; text = "󱁿"; }
      { name = "environment/"; text = "󱞊"; }
      { name = "zathura.nix"; text = ""; fg = "#7ebae4"; }
      { name = "helix.nix"; text = "󰚄"; fg = "#7ebae4"; }
      { name = "btop.nix"; text = "󱔓"; fg = "#7ebae4"; }
      { name = "kitty.nix"; text = "󰄛"; fg = "#7ebae4"; }
      { name = "ags/"; text = ""; }
      { name = "system/"; text = ""; }
      { name = "pkgs/"; text = ""; }
      { name = "host-specific"; text = "󰛧"; }
      
    ];
  };
};
}

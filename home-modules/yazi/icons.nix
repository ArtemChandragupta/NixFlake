{

programs.yazi.theme = {
  filetype.rules = [
    { mime = "*/image/*"; fg = "#83a598"; }
    { mime = "*/video/*"; fg = "#b8bb26"; }
    { mime = "*/audio/*"; fg = "#b8bb26"; }

    { mime = "*/application/zip";             fg = "#d65d0e"; }
    { mime = "*/application/gzip";            fg = "#d65d0e"; }
    { mime = "*/application/x-tar";           fg = "#d65d0e"; }
    { mime = "*/application/x-bzip";          fg = "#d65d0e"; }
    { mime = "*/application/x-bzip2";         fg = "#d65d0e"; }
    { mime = "*/application/x-7z-compressed"; fg = "#d65d0e"; }
    { mime = "*/application/x-rar";           fg = "#d65d0e"; }

    { name = "*";  fg = "#a89984"; }
    { name = "*/"; fg = "#458588"; }
  ];

  icon.prepend_rules = [
    { name = "*default.nix";   text = ""; fg = "#d65d0e"; }
    { name = "*home.nix";      text = ""; fg = "#d65d0e"; }

    { name = "*Desktop/";      text = "󰧨"; }
    { name = "*Documents/";    text = "󱔗"; }
    { name = "*Downloads/";    text = ""; }
    { name = "*Games/";        text = "󰊖"; }
    { name = "*media/";        text = ""; }
    { name = "*nix/";          text = ""; }
    { name = "*PortProton/";   text = "󰝨"; }
    { name = "*studytrash/";   text = "󰗚"; }
    { name = "*Vaults/";       text = "󰘳"; }
    { name = "*virtual/";      text = ""; }

    { name = "*home-modules/"; text = "󱂵"; }
      { name = "*ags/";          text = ""; }
      { name = "*anyrun/";       text = "󰘵"; }
      { name = "*hyprland/";     text = ""; }
      { name = "*nixvim/";       text = ""; }
        { name = "*plugins.nix";   text = ""; fg = "#7ebae4"; }
      { name = "*rofi/";         text = "󱗼"; }
        { name = "*appgrid.nix";   text = "󱗼"; fg = "#7ebae4"; }
      { name = "*swaync/";       text = ""; }
      { name = "*waybar/";       text = "󱓺"; }
      { name = "*yazi/";         text = "󰇥"; }
        { name = "*lua/";          text = ""; }
        { name = "*icons.nix";     text = ""; fg = "#7ebae4"; }
        { name = "*opener.nix";    text = ""; fg = "#7ebae4"; }
        { name = "*theme.nix";     text = "󱌝"; fg = "#7ebae4"; }
      { name = "*btop.nix";      text = "󱔓"; fg = "#7ebae4"; }
      { name = "*git.nix";       text = "󰊢"; fg = "#7ebae4"; }
      { name = "*helix.nix";     text = "󰚄"; fg = "#7ebae4"; }
      { name = "*kitty.nix";     text = "󰄛"; fg = "#7ebae4"; }
      { name = "*stylix.nix";    text = "󰃣"; fg = "#7ebae4"; }
      { name = "*wofi.nix";      text = ""; fg = "#7ebae4"; }
      { name = "*zathura.nix";   text = ""; fg = "#7ebae4"; }
    
    { name = "*modules/";      text = "󱁿"; }
      { name = "*host-specific/";text = "󰛧"; }
        { name = "*ThinkBook13s/"; text = ""; }
      { name = "*system/";       text = ""; }
        { name = "*bash.nix";      text = ""; fg = "#7ebae4"; }
        { name = "*boot.nix";      text = "󰅕"; fg = "#7ebae4"; }
        { name = "*flatpak.nix";   text = ""; fg = "#7ebae4"; }
        { name = "*locales.nix";   text = ""; fg = "#7ebae4"; }
        { name = "*networking.nix";text = ""; fg = "#7ebae4"; }
        { name = "*sound.nix";     text = ""; fg = "#7ebae4"; }
        { name = "*system.nix";    text = "󰘳"; fg = "#7ebae4"; }
        { name = "*usb.nix";       text = "󰕓"; fg = "#7ebae4"; }
        { name = "*virtual.nix";   text = ""; fg = "#7ebae4"; }
      { name = "*pkgs/";         text = ""; }
        { name = "*apps.nix";      text = ""; fg = "#7ebae4"; }
        { name = "*fonts.nix";     text = "󰛖"; fg = "#7ebae4"; }
        { name = "*games.nix";     text = "󰊖"; fg = "#7ebae4"; }
        { name = "*terminal.nix";  text = ""; fg = "#7ebae4"; }
        { name = "*utils.nix";     text = "󱌢"; fg = "#7ebae4"; }
      { name = "*wm/";           text = ""; }
        { name = "*gnome.nix";     text = ""; fg = "#7ebae4"; }
        { name = "*hyprland.nix";  text = ""; fg = "#7ebae4"; }
        { name = "*starship.nix";  text = ""; fg = "#7ebae4"; }
  ];
};

}

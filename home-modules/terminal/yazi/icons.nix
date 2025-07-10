{

programs.yazi.theme.icon.prepend_exts = [
  { name = "nu";  text = ""; fg = "#689D6A"; }
  { name = "typ"; text = ""; fg = "#239DAD"; }
];

programs.yazi.theme.icon.globs = [
  { name = "*default.nix";   text = ""; fg = "#d65d0e"; }
  { name = "*home.nix";      text = ""; fg = "#d65d0e"; }

  { name = "*Arduino/";      text = ""; }
  { name = "*Desktop/";      text = "󰧨"; }
  { name = "*Dev/";          text = "󱚊"; }
    { name = "*haskell/";      text = "󰲒"; }
      { name = "*waterfall*/";   text = "󱡉"; }
    { name = "*julia/";        text = ""; }
    { name = "*lab/";          text = ""; }
    { name = "*LaTeX/";        text = ""; }
    { name = "*letters/";      text = "󰾸"; }
    { name = "*myblog/";       text = "󰒪"; }
    { name = "*openscad/";     text = ""; }
    { name = "*python/";       text = "󰌠"; }
    { name = "*Rust/";         text = "󱘗"; }
    { name = "*typst/";        text = ""; }
  { name = "*Documents/";    text = "󱔗"; }
  { name = "*Downloads/";    text = ""; }
  { name = "*Games/";        text = "󰊖"; }
  { name = "*media/";        text = ""; }
  { name = "*nix/";          text = ""; }
  { name = "*PortProton/";   text = "󰹻"; }
  { name = "*Screenshots/";  text = ""; }
  { name = "*Studythings/";  text = "󰗚"; }
  { name = "*Sync/";         text = ""; }
  { name = "*Vaults/";       text = "󰘳"; }
  { name = "*virtual/";      text = ""; }

  { name = "*home-modules/"; text = "󱂵"; }
    { name = "*ags/";          text = ""; }
      { name = "*backlight/";    text = "󰃠"; }
      { name = "*battery/";      text = "󰂄"; }
      { name = "*clock/";        text = "󰅐"; }
      { name = "*cpu/";          text = ""; }
      { name = "*flake/";        text = "󱄅"; }
      { name = "*memory/";       text = ""; }
      { name = "*temperature/";  text = "󰔐"; }
      { name = "*tray/";         text = ""; }
      { name = "*volume/";       text = "󱄠"; }
      { name = "*workspace/";    text = ""; }

    { name = "*apps/";          text = ""; }
      { name = "*dialect/";      text = "󰗊"; }
      { name = "*firefox/";      text = "󰈹"; }
        { name = "*solid/";        text = "󰌨"; }
        { name = "*transparent/";  text = "󰧾"; }
        { name = "*bookmarks.nix"; text = "󰸕"; fg = "#7ebae4"; }
        { name = "*config.nix";    text = ""; fg = "#7ebae4"; }
        { name = "*search.nix";    text = ""; fg = "#7ebae4"; }
      { name = "*mpv.nix";       text = "󰃽"; fg = "#7ebae4"; }
      { name = "*zathura.nix";   text = ""; fg = "#7ebae4"; }

    { name = "*hyprland/";     text = ""; }
      { name = "*icons/";        text = ""; }
        { name = "*gruvbox-plus-dark.nix"; text = "󰚠"; fg = "#7ebae4"; }
      { name = "*monitors/";     text = "󱡶"; }
      { name = "*rofi-appgrid/"; text = "󱗼"; }
        { name = "*style.rasi";    text = "󱜧"; fg = "#cc241d"; }
        { name = "*pkg.nix";       text = ""; fg = "#7ebae4"; }
      { name = "*swaync/";       text = "󱅫"; }
      { name = "*wallpaper/";    text = "󰸉"; }
        { name = "*fetchWlppr.nix";text = "󰭽"; fg = "#7ebae4"; }
      { name = "*waybar/";       text = "󱟛"; }
      { name = "*zen-mode/";     text = "󰚀"; }
        { name = "*modules.nix"; text = "󰞤"; fg = "#7ebae4"; }
      { name = "*autostart.nix"; text = "󱣲"; fg = "#7ebae4"; }
      { name = "*binds.nix";     text = "󰌌"; fg = "#7ebae4"; }
      { name = "*rules.nix";     text = ""; fg = "#7ebae4"; }
      { name = "*screenlock.nix";text = "󰷛"; fg = "#7ebae4"; }
      { name = "*screenshot.nix";text = ""; fg = "#7ebae4"; }
      { name = "*settings.nix";  text = ""; fg = "#7ebae4"; }

    { name = "*languages/";    text = ""; }
      { name = "*haskell.nix";   text = "󰲒"; fg = "#7ebae4"; }
      { name = "*julia.nix";     text = ""; fg = "#7ebae4"; }
      { name = "*python.nix";    text = "󰌠"; fg = "#7ebae4"; }
      { name = "*TeX.nix";       text = ""; fg = "#7ebae4"; }
      { name = "*css.nix";       text = "󰌜"; fg = "#7ebae4"; }
      { name = "*js.nix";        text = ""; fg = "#7ebae4"; }
      { name = "*lua.nix";       text = "󰢱"; fg = "#7ebae4"; }
      { name = "*nushell.nix";   text = ""; fg = "#7ebae4"; }
      { name = "*rust.nix";      text = ""; fg = "#7ebae4"; }
      { name = "*toml.nix";      text = ""; fg = "#7ebae4"; }
      { name = "*typst.nix";     text = ""; fg = "#7ebae4"; }
      { name = "*keymap.nix";    text = "󰌌"; fg = "#7ebae4"; }
      { name = "*neovide.nix";   text = "󱘗"; fg = "#7ebae4"; }

    { name = "*terminal/";     text = ""; }
      { name = "*helix/";        text = "󰚄"; }
        { name = "*languages.nix"; text = ""; fg = "#7ebae4"; }
      { name = "*nixvim/";       text = ""; }
        { name = "*lua/";          text = ""; }
        { name = "*plugins/";      text = "󰐱"; }
          { name = "*autopairs.nix"; text = "󰅩"; fg = "#7ebae4"; }
          { name = "*blink-cmp.nix"; text = "󰫢"; fg = "#7ebae4"; }
          { name = "*colorizer.nix"; text = "󰸱"; fg = "#7ebae4"; }
          { name = "*comment.nix";   text = "#"; fg = "#7ebae4"; }
          { name = "*img-clip.nix";  text = "󰧸"; fg = "#7ebae4"; }
          { name = "*indent.nix";    text = "󰉶"; fg = "#7ebae4"; }
          { name = "*lazygit.nix";   text = "󰊢"; fg = "#7ebae4"; }
          { name = "*lualine.nix";   text = "󱖫"; fg = "#7ebae4"; }
          { name = "*luasnip.nix";   text = "󰘤"; fg = "#7ebae4"; }
          { name = "*noice.nix";     text = "󱆞"; fg = "#7ebae4"; }
          { name = "*whichkey.nix";  text = "󰌒"; fg = "#7ebae4"; }
          { name = "*wrapping.nix";  text = "󰖶"; fg = "#7ebae4"; }
          { name = "*zen-mode.nix";  text = "󰚀"; fg = "#7ebae4"; }
      { name = "*shell/";       text = ""; }
        { name = "*nushell/";      text = ""; }
        { name = "*bash.nix";      text = ""; fg = "#7ebae4"; }
      { name = "*yazi/";         text = "󰇥"; }
        { name = "*filetype.nix";  text = ""; fg = "#7ebae4"; }
        { name = "*icons.nix";     text = ""; fg = "#7ebae4"; }
        { name = "*opener.nix";    text = ""; fg = "#7ebae4"; }
        { name = "*plugins.nix";    text = "󰐱"; fg = "#7ebae4"; }
        { name = "*theme.nix";     text = "󰣆"; fg = "#7ebae4"; }
      { name = "*btm.nix";       text = "󱔓"; fg = "#7ebae4"; }
      { name = "*clipse.nix";    text = "󱓥"; fg = "#7ebae4"; }
      { name = "*direnv.nix";    text = "󰇐"; fg = "#7ebae4"; }
      { name = "*fastfetch.nix"; text = "󱡠"; fg = "#7ebae4"; }
      { name = "*git.nix";       text = "󰊢"; fg = "#7ebae4"; }
      { name = "*kitty.nix";     text = "󰄛"; fg = "#7ebae4"; }
      { name = "*numbat.nix";    text = "󰇃"; fg = "#7ebae4"; }
      { name = "*starship.nix";  text = "󱓞"; fg = "#7ebae4"; }

    { name = "*stylix.nix";    text = "󰃣"; fg = "#7ebae4"; }

  { name = "*modules/";      text = "󱁿"; }
    { name = "*host-specific/";text = "󰛧"; }
      { name = "*ThinkBook13s/"; text = "󰌢"; }
        { name = "*AMD.nix";       text = "󰆦"; fg = "#7ebae4"; }
        { name = "*power.nix";     text = "󰓅"; fg = "#7ebae4"; }
        { name ="*remote-desktop.nix";text="󰢹"; fg ="#7ebae4"; }
      { name = "*homePC/";      text = "󰪫"; }
        { name = "*nvidia.nix";    text = "󰖂"; fg = "#7ebae4"; }
        { name = "*virtual.nix";   text = ""; fg = "#7ebae4"; }

    { name = "*pkgs/";         text = "󰏖"; }
      { name = "*apps.nix";      text = ""; fg = "#7ebae4"; }
      { name = "*distrobox.nix"; text = "󰬋"; fg = "#7ebae4"; }
      { name = "*flatpak.nix";   text = "󰹍"; fg = "#7ebae4"; }
      { name = "*fonts.nix";     text = ""; fg = "#7ebae4"; }
      { name = "*games.nix";     text = "󰊖"; fg = "#7ebae4"; }
      { name = "*utils.nix";     text = "󱌢"; fg = "#7ebae4"; }

    { name = "*system/";       text = ""; }
      { name = "*bluetooth.nix"; text = "󰂰"; fg = "#7ebae4"; }
      { name = "*boot.nix";      text = "󱫡"; fg = "#7ebae4"; }
      { name = "*locales.nix";   text = "󱀍"; fg = "#7ebae4"; }
      { name = "*networking.nix";text = "󰀂"; fg = "#7ebae4"; }
      { name = "*sound.nix";     text = "󱀞"; fg = "#7ebae4"; }
      { name = "*system.nix";    text = "󰘳"; fg = "#7ebae4"; }
      { name = "*usb.nix";       text = "󱊞"; fg = "#7ebae4"; }
      { name = "*users.nix";     text = ""; fg = "#7ebae4"; }

    { name = "*wm/";           text = ""; }
      { name = "*dm.nix";        text = "󰍂"; fg = "#7ebae4"; }
      { name = "*hyprland.nix";  text = ""; fg = "#7ebae4"; }
];

}

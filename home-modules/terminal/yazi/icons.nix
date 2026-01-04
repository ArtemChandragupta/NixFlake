{

programs.yazi.theme.icon.prepend_exts = [
  { name = "nu";  text = ""; fg = "#689D6A"; }
  { name = "typ"; text = ""; fg = "#239DAD"; }
];

programs.yazi.theme.icon.globs = [
  { url = "*default.nix";   text = ""; fg = "#d65d0e"; }
  { url = "*home.nix";      text = ""; fg = "#d65d0e"; }

  { url = "*Arduino/";      text = ""; }
  { url = "*Desktop/";      text = "󰧨"; }
  { url = "*Dev/";          text = "󱚊"; }
    { url = "*haskell/";      text = "󰲒"; }
      { url = "*waterfall*/";   text = "󱡉"; }
    { url = "*julia/";        text = ""; }
    { url = "*lab/";          text = ""; }
    { url = "*LaTeX/";        text = ""; }
    { url = "*letters/";      text = "󰾸"; }
    { url = "*myblog/";       text = "󰒪"; }
    { url = "*openscad/";     text = ""; }
    { url = "*python/";       text = "󰌠"; }
    { url = "*Rust/";         text = "󱘗"; }
    { url = "*Turbothesis/";  text = "󱪂"; }
    { url = "*typst/";        text = ""; }
  { url = "*Documents/";    text = "󱔗"; }
  { url = "*Downloads/";    text = ""; }
  { url = "*Games/";        text = "󰊖"; }
  { url = "*media/";        text = ""; }
  { url = "*nix/";          text = ""; }
  { url = "*PortProton/";   text = "󰹻"; }
  { url = "*Screenshots/";  text = ""; }
  { url = "*Studythings/";  text = "󰗚"; }
  { url = "*Sync/";         text = ""; }
  { url = "*Vaults/";       text = "󰘳"; }
  { url = "*virtual/";      text = ""; }

  { url = "*home-modules/"; text = "󱂵"; }
    { url = "*ags/";          text = ""; }
      { url = "*backlight/";    text = "󰃠"; }
      { url = "*battery/";      text = "󰂄"; }
      { url = "*clock/";        text = "󰅐"; }
      { url = "*cpu/";          text = ""; }
      { url = "*flake/";        text = "󱄅"; }
      { url = "*memory/";       text = ""; }
      { url = "*temperature/";  text = "󰔐"; }
      { url = "*tray/";         text = ""; }
      { url = "*volume/";       text = "󱄠"; }
      { url = "*workspace/";    text = ""; }

    { url = "*apps/";          text = ""; }
      { url = "*dialect/";      text = "󰗊"; }
      { url = "*firefox/";      text = "󰈹"; }
        { url = "*solid/";        text = "󰌨"; }
        { url = "*transparent/";  text = "󰧾"; }
        { url = "*bookmarks.nix"; text = "󰸕"; fg = "#7ebae4"; }
        { url = "*config.nix";    text = ""; fg = "#7ebae4"; }
        { url = "*search.nix";    text = ""; fg = "#7ebae4"; }
      { url = "*mpv.nix";       text = "󰃽"; fg = "#7ebae4"; }
      { url = "*zathura.nix";   text = ""; fg = "#7ebae4"; }

    { url = "*hyprland/";     text = ""; }
      { url = "*icons/";        text = ""; }
        { url = "*gruvbox-plus-dark.nix"; text = "󰚠"; fg = "#7ebae4"; }
      { url = "*monitors/";     text = "󱡶"; }
      { url = "*rofi-appgrid/"; text = "󱗼"; }
        { url = "*style.rasi";    text = "󱜧"; fg = "#cc241d"; }
        { url = "*pkg.nix";       text = ""; fg = "#7ebae4"; }
      { url = "*swaync/";       text = "󱅫"; }
      { url = "*wallpaper/";    text = "󰸉"; }
        { url = "*fetchWlppr.nix";text = "󰭽"; fg = "#7ebae4"; }
      { url = "*waybar/";       text = "󱟛"; }
      { url = "*zen-mode/";     text = "󰚀"; }
        { url = "*modules.nix"; text = "󰞤"; fg = "#7ebae4"; }
      { url = "*autostart.nix"; text = "󱣲"; fg = "#7ebae4"; }
      { url = "*binds.nix";     text = "󰌌"; fg = "#7ebae4"; }
      { url = "*rules.nix";     text = ""; fg = "#7ebae4"; }
      { url = "*screenlock.nix";text = "󰷛"; fg = "#7ebae4"; }
      { url = "*screenshot.nix";text = ""; fg = "#7ebae4"; }
      { url = "*settings.nix";  text = ""; fg = "#7ebae4"; }

    { url = "*languages/";    text = ""; }
      { url = "*haskell.nix";   text = "󰲒"; fg = "#7ebae4"; }
      { url = "*julia.nix";     text = ""; fg = "#7ebae4"; }
      { url = "*python.nix";    text = "󰌠"; fg = "#7ebae4"; }
      { url = "*TeX.nix";       text = ""; fg = "#7ebae4"; }
      { url = "*css.nix";       text = "󰌜"; fg = "#7ebae4"; }
      { url = "*js.nix";        text = ""; fg = "#7ebae4"; }
      { url = "*lua.nix";       text = "󰢱"; fg = "#7ebae4"; }
      { url = "*markdown.nix";  text = "󰍔"; fg = "#7ebae4"; }
      { url = "*nushell.nix";   text = ""; fg = "#7ebae4"; }
      { url = "*rust.nix";      text = ""; fg = "#7ebae4"; }
      { url = "*toml.nix";      text = ""; fg = "#7ebae4"; }
      { url = "*typst.nix";     text = ""; fg = "#7ebae4"; }

    { url = "*terminal/";     text = ""; }
      { url = "*helix/";        text = "󰚄"; }
        { url = "*languages.nix"; text = ""; fg = "#7ebae4"; }
        { url = "*keymap-ru.nix"; text = "󰌌"; fg = "#7ebae4"; }
      { url = "*nixvim/";       text = ""; }
        { url = "*lua/";          text = ""; }
        { url = "*plugins/";      text = "󰐱"; }
          { url = "*autopairs.nix"; text = "󰅩"; fg = "#7ebae4"; }
          { url = "*blink-cmp.nix"; text = "󰫢"; fg = "#7ebae4"; }
          { url = "*colorizer.nix"; text = "󰸱"; fg = "#7ebae4"; }
          { url = "*comment.nix";   text = "#"; fg = "#7ebae4"; }
          { url = "*img-clip.nix";  text = "󰧸"; fg = "#7ebae4"; }
          { url = "*indent.nix";    text = "󰉶"; fg = "#7ebae4"; }
          { url = "*lazygit.nix";   text = "󰊢"; fg = "#7ebae4"; }
          { url = "*lualine.nix";   text = "󱖫"; fg = "#7ebae4"; }
          { url = "*luasnip.nix";   text = "󰘤"; fg = "#7ebae4"; }
          { url = "*noice.nix";     text = "󱆞"; fg = "#7ebae4"; }
          { url = "*whichkey.nix";  text = "󰌒"; fg = "#7ebae4"; }
          { url = "*wrapping.nix";  text = "󰖶"; fg = "#7ebae4"; }
          { url = "*zen-mode.nix";  text = "󰚀"; fg = "#7ebae4"; }
        { url = "*keymap.nix";    text = "󰌌"; fg = "#7ebae4"; }
        { url = "*neovide.nix";   text = "󱘗"; fg = "#7ebae4"; }
      { url = "*shell/";       text = ""; }
        { url = "*nushell/";      text = ""; }
        { url = "*bash.nix";      text = ""; fg = "#7ebae4"; }
      { url = "*yazi/";         text = "󰇥"; }
        { url = "*filetype.nix";  text = ""; fg = "#7ebae4"; }
        { url = "*icons.nix";     text = ""; fg = "#7ebae4"; }
        { url = "*opener.nix";    text = ""; fg = "#7ebae4"; }
        { url = "*plugins.nix";    text = "󰐱"; fg = "#7ebae4"; }
        { url = "*theme.nix";     text = "󰣆"; fg = "#7ebae4"; }
      { url = "*btm.nix";       text = "󱔓"; fg = "#7ebae4"; }
      { url = "*clipse.nix";    text = "󱓥"; fg = "#7ebae4"; }
      { url = "*direnv.nix";    text = "󰇐"; fg = "#7ebae4"; }
      { url = "*fastfetch.nix"; text = "󱡠"; fg = "#7ebae4"; }
      { url = "*git.nix";       text = "󰊢"; fg = "#7ebae4"; }
      { url = "*kitty.nix";     text = "󰄛"; fg = "#7ebae4"; }
      { url = "*numbat.nix";    text = "󰇃"; fg = "#7ebae4"; }
      { url = "*starship.nix";  text = "󱓞"; fg = "#7ebae4"; }

    { url = "*stylix.nix";    text = "󰃣"; fg = "#7ebae4"; }

  { url = "*modules/";      text = "󱁿"; }
    { url = "*host-specific/";text = "󰛧"; }
      { url = "*ThinkBook13s/"; text = "󰌢"; }
        { url = "*AMD.nix";       text = "󰆦"; fg = "#7ebae4"; }
        { url = "*power.nix";     text = "󰓅"; fg = "#7ebae4"; }
        { url ="*remote-desktop.nix";text="󰢹"; fg ="#7ebae4"; }
      { url = "*homePC/";      text = "󰪫"; }
        { url = "*nvidia.nix";    text = "󰖂"; fg = "#7ebae4"; }
        { url = "*virtual.nix";   text = ""; fg = "#7ebae4"; }

    { url = "*pkgs/";         text = "󰏖"; }
      { url = "*apps.nix";      text = ""; fg = "#7ebae4"; }
      { url = "*distrobox.nix"; text = "󰬋"; fg = "#7ebae4"; }
      { url = "*flatpak.nix";   text = "󰹍"; fg = "#7ebae4"; }
      { url = "*fonts.nix";     text = ""; fg = "#7ebae4"; }
      { url = "*games.nix";     text = "󰊖"; fg = "#7ebae4"; }
      { url = "*utils.nix";     text = "󱌢"; fg = "#7ebae4"; }

    { url = "*system/";       text = ""; }
      { url = "*bluetooth.nix"; text = "󰂰"; fg = "#7ebae4"; }
      { url = "*boot.nix";      text = "󱫡"; fg = "#7ebae4"; }
      { url = "*locales.nix";   text = "󱀍"; fg = "#7ebae4"; }
      { url = "*networking.nix";text = "󰀂"; fg = "#7ebae4"; }
      { url = "*sound.nix";     text = "󱀞"; fg = "#7ebae4"; }
      { url = "*system.nix";    text = "󰘳"; fg = "#7ebae4"; }
      { url = "*usb.nix";       text = "󱊞"; fg = "#7ebae4"; }
      { url = "*users.nix";     text = ""; fg = "#7ebae4"; }

    { url = "*wm/";           text = ""; }
      { url = "*dm.nix";        text = "󰍂"; fg = "#7ebae4"; }
      { url = "*hyprland.nix";  text = ""; fg = "#7ebae4"; }
];

}

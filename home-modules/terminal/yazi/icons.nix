{

programs.yazi.theme.icon.prepend_exts = [
  { name = "nu";  text = ""; fg_dark = "#689D6A"; }
];

programs.yazi.theme.icon.globs = [
  { name = "*default.nix";   text = ""; fg_dark = "#d65d0e"; }
  { name = "*home.nix";      text = ""; fg_dark = "#d65d0e"; }

  { name = "*Desktop/";      text = "󰧨"; }
  { name = "*Dev/";          text = "󱚊"; }
    { name = "*LaTeX/";        text = ""; }
    { name = "*letters/";      text = "󰾸"; }
    { name = "*myblog/";       text = "󰒪"; }
    { name = "*python/";       text = "󰌠"; }
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

    { name = "*firefox/";      text = "󰈹"; }
      { name = "*solid/";        text = "󰌨"; }
      { name = "*transparent/";  text = "󰧾"; }
      { name = "*bookmarks.nix"; text = "󰸕"; fg_dark = "#7ebae4"; }
      { name = "*config.nix";    text = ""; fg_dark = "#7ebae4"; }
      { name = "*search.nix";    text = ""; fg_dark = "#7ebae4"; }

    { name = "*hyprland/";     text = ""; }
      { name = "*autoname/";     text = "󰎏"; }
      { name = "*rofi-appgrid/"; text = "󱗼"; }
        { name = "*style.rasi";    text = "󱜧"; fg_dark = "#cc241d"; }
        { name = "*pkg.nix";       text = ""; fg_dark = "#7ebae4"; }
      { name = "*swaync/";       text = "󱅫"; }
      { name = "*wallpaper/";    text = "󰸉"; }
        { name = "*fetchWlppr.nix";text = "󰭽"; fg_dark = "#7ebae4"; }
      { name = "*waybar/";       text = "󱟛"; }
      { name = "*binds.nix";     text = "󰌌"; fg_dark = "#7ebae4"; }
      { name = "*monitors.nix";  text = "󰍺"; fg_dark = "#7ebae4"; }
      { name = "*rules.nix";     text = ""; fg_dark = "#7ebae4"; }
      { name = "*screenlock.nix";text = "󰷛"; fg_dark = "#7ebae4"; }
      { name = "*settings.nix";  text = ""; fg_dark = "#7ebae4"; }

    { name = "*languages/";    text = ""; }
      { name = "*python.nix";    text = "󰌠"; fg_dark = "#7ebae4"; }
      { name = "*TeX.nix";       text = ""; fg_dark = "#7ebae4"; }

    { name = "*terminal/";     text = ""; }
      { name = "*helix/";        text = "󰚄"; }
        { name = "*languages.nix"; text = ""; fg_dark = "#7ebae4"; }
      { name = "*nixvim/";       text = ""; }
        { name = "*keymap.nix";    text = "󰌌"; fg_dark = "#7ebae4"; }
        { name = "*plugins.nix";   text = "󰐱"; fg_dark = "#7ebae4"; }
      { name = "*shell/";       text = ""; }
        { name = "*nushell/";      text = ""; }
        { name = "*bash.nix";      text = ""; fg_dark = "#7ebae4"; }
      { name = "*yazi/";         text = "󰇥"; }
        { name = "*lua/";          text = ""; }
        { name = "*filetype.nix";  text = ""; fg_dark = "#7ebae4"; }
        { name = "*icons.nix";     text = ""; fg_dark = "#7ebae4"; }
        { name = "*opener.nix";    text = ""; fg_dark = "#7ebae4"; }
        { name = "*theme.nix";     text = "󰣆"; fg_dark = "#7ebae4"; }
      { name = "*btop.nix";      text = "󱔓"; fg_dark = "#7ebae4"; }
      { name = "*clipse.nix";    text = "󱓥"; fg_dark = "#7ebae4"; }
      { name = "*fastfetch.nix"; text = "󱡠"; fg_dark = "#7ebae4"; }
      { name = "*git.nix";       text = "󰊢"; fg_dark = "#7ebae4"; }
      { name = "*kitty.nix";     text = "󰄛"; fg_dark = "#7ebae4"; }
      { name = "*starship.nix";  text = "󱓞"; fg_dark = "#7ebae4"; }
    
    { name = "*stylix.nix";    text = "󰃣"; fg_dark = "#7ebae4"; }
    { name = "*xdg.nix";       text = "󱅷"; fg_dark = "#7ebae4"; }

  { name = "*modules/";      text = "󱁿"; }
    { name = "*host-specific/";text = "󰛧"; }
      { name = "*ThinkBook13s/"; text = "󰌢"; }
        { name = "*AMD.nix";       text = "󰆦"; fg_dark = "#7ebae4"; }
        { name = "*power.nix";     text = "󰓅"; fg_dark = "#7ebae4"; }
        { name = "*remote-desktop.nix";text = "󰢹"; fg_dark = "#7ebae4"; }
      { name = "*homePC/";      text = "󰪫"; }
        { name = "*nvidia.nix";    text = "󰖂"; fg_dark = "#7ebae4"; }

    { name = "*system/";       text = ""; }
      { name = "*boot.nix";      text = "󱫡"; fg_dark = "#7ebae4"; }
      { name = "*flatpak.nix";   text = "󰏖"; fg_dark = "#7ebae4"; }
      { name = "*locales.nix";   text = "󱀍"; fg_dark = "#7ebae4"; }
      { name = "*networking.nix";text = "󰀂"; fg_dark = "#7ebae4"; }
      { name = "*sound.nix";     text = "󱀞"; fg_dark = "#7ebae4"; }
      { name = "*system.nix";    text = "󰘳"; fg_dark = "#7ebae4"; }
      { name = "*usb.nix";       text = "󱊞"; fg_dark = "#7ebae4"; }
      { name = "*users.nix";     text = ""; fg_dark = "#7ebae4"; }
      { name = "*virtual.nix";   text = ""; fg_dark = "#7ebae4"; }

    { name = "*pkgs/";         text = "󰏖"; }
      { name = "*apps.nix";      text = ""; fg_dark = "#7ebae4"; }
      { name = "*fonts.nix";     text = ""; fg_dark = "#7ebae4"; }
      { name = "*games.nix";     text = "󰊖"; fg_dark = "#7ebae4"; }
      { name = "*utils.nix";     text = "󱌢"; fg_dark = "#7ebae4"; }

    { name = "*wm/";           text = ""; }
      { name = "*gnome.nix";     text = ""; fg_dark = "#7ebae4"; }
      { name = "*hyprland.nix";  text = ""; fg_dark = "#7ebae4"; }
];

}

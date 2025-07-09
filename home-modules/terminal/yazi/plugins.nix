{ pkgs, ... }:{

programs.yazi = {
  plugins = with pkgs.yaziPlugins; {
    "smart-enter" = smart-enter;
    "full-border" = full-border;
    "starship"    = starship;
    "lazygit"     = lazygit;
    "ouch"        = ouch;
  };
  initLua = /*lua*/''
    require("full-border"):setup()
    require("starship"   ):setup()
  '';
  settings.plugin.prepend_previewers = [
      { mime = "application/*zip";            run = "ouch"; }
      { mime = "application/x-tar";           run = "ouch"; }
      { mime = "application/x-bzip2";         run = "ouch"; }
      { mime = "application/x-7z-compressed"; run = "ouch"; }
      { mime = "application/x-rar";           run = "ouch"; }
      { mime = "application/x-xz";            run = "ouch"; }
  ];
};

}

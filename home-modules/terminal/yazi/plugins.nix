{ pkgs, ... }:{

programs.yazi = {
  plugins = {
    smart-enter = pkgs.yaziPlugins.smart-enter;
    full-border = pkgs.yaziPlugins.full-border;
    starship    = pkgs.yaziPlugins.starship;
    lazygit     = pkgs.yaziPlugins.lazygit;
    ouch        = pkgs.yaziPlugins.ouch;
    gitu        = ./plugin-gitu;
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

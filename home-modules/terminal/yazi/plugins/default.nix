{

programs.yazi = {
  plugins = {
    "smart-enter" = ./smart-enter;
    "full-border" = ./full-border;
    "starship"    = ./starship;
    "ouch"        = ./ouch;
  };
  initLua = ./init.lua;
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

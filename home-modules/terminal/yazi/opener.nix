{

programs.yazi.settings = {
  opener = {
    "mpv" = [
      {
        run = ''mpv --no-terminal "$@" 2&>/dev/null'';
        block = true;
      }
    ];
    "image" = [
      {
        run   = ''loupe "$@" 2&>/dev/null'';
        block = true;
      }
    ];
    "hx" = [
      {
        run   = ''hx "$@"'';
        block = true;
      }
    ];
    "zathura" = [
      {
        run   = ''zathura "$@"'';
        block = true;
      }
    ];
    "papers" = [
      {
        run   = ''papers "$@"'';
        block = true;
      }
    ];
  };

  open.prepend_rules = [
    {
      url = "*.djvu";
      use = "papers";
    }
    {
      url = "*.svg";
      use = ["image" "hx"];
    }
    {
      mime = "text/*";
      use  = "hx";
    }
    {
      mime = "image/*";
      use  = "image";
    }
    {
      mime = "video/*";
      use  = "mpv";
    }
    {
      mime = "application/pdf";
      use  = ["zathura" "papers"];
    }
  ];
};

}

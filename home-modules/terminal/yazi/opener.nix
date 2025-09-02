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
        run   = ''loupe "$@"'';
        block = true;
      }
    ];
    "hx" = [
      {
        run   = ''hx "$@"'';
        block = true;
      }
    ];
    "hx-writer" = [
      {
        run   = ''hx-writer "$@"'';
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
      name = "*.djvu";
      use  = "papers";
    }
    {
      name = "*.tex";
      use  = "hx-writer";
    }
    {
      name = "*.md";
      use  = "hx-writer";
    }
    {
      name = "*.typ";
      use  = ["hx-writer" "hx"];
    }
    {
      mime = "text/*";
      use  = ["hx" "hx-writer"];
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

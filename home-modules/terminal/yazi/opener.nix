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
        desc = "hx-writer";
        run = ''
            kitty @ set-font-size 16
            kitty @ set-background-opacity 1
            hx "$@"
            kitty @ set-font-size 0
            kitty @ set-background-opacity --toggle 1
          '';
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
      url = "*.tex";
      use = ["hx-writer" "hx"];
    }
    {
      url = "*.txt";
      use = ["hx-writer" "hx"];
    }
    {
      url = "*.md";
      use = "hx-writer";
    }
    {
      url = "*.typ";
      use = ["hx-writer" "hx"];
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

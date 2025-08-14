{ var, ... }:{

programs.yazi.settings = {
  opener = {
    "mpv" = [
      {
        run = ''mpv "$@"'';
        block = true;
      }
    ];
    "image" = [
      {
        run   = ''loupe "$@"'';
        block = true;
      }
    ];
    "Nvim" = [
      {
        run   = ''nvim "$@"'';
        block = true;
      }
    ];
    "Neovide" = [
      {
        run   = ''neovide "$@"'';
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
        run   = ''hx-writer "$@" ${var.keyb}'';
        block = true;
      }
    ];
    "hx-write" = [
      {
        run   = ''
          kitty @ set-font-size 16
          kitty @ set-background-opacity 1
          kitty @ set-window-title --temporary hx-writer
          hx "$@"
          kitty @ set-font-size 0
          kitty @ set-background-opacity --toggle 1
        '';
        block = true;
        desc  = "hx-write";
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

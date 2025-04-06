{

programs.yazi.settings = {
  opener = {
    "clapper" = [
      {
        run   = ''clapper "$@"'';
        block = true;
      }
    ];
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
      use  = ["Neovide" "Nvim"];
    }
    {
      name = "*.typ";
      use  = ["Neovide" "hx" "Nvim"];
    }
    {
      mime = "text/*";
      use  = ["Nvim" "hx" "Neovide"];
    }
    {
      mime = "image/*";
      use  = "image";
    }
    {
      mime = "video/*";
      use  = ["mpv" "clapper"];
    }
    {
      mime = "application/pdf";
      use  = ["zathura" "papers"];
    }
  ];
};

}

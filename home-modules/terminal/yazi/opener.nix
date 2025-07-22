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
    
    "hx-write" = [
      {
        run   = ''
          kitty @ set-font-size 16
          kitty @ set-background-opacity 1
          hx "$@"
          clear
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
      name = "*.djvu";
      use  = "papers";
    }
    {
      name = "*.tex";
      use  = ["Neovide" "Nvim"];
    }
    {
      name = "*.typ";
      use  = ["hx-write" "Neovide" "hx" "Nvim"];
    }
    {
      mime = "text/*";
      use  = ["hx" "Nvim" "Neovide"];
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

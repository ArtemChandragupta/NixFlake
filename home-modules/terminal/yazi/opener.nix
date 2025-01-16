{

programs.yazi.settings = {
  opener = {
    "text" = [
      {
        run = ''nvim "$@"'';
        block = true;
      }
    ];
    "video" = [
      {
        run  = ''clapper "$@"'';
        block = true;
      }
    ];
    "image" = [
      {
        run  = ''loupe "$@"'';
        block = true;
      }
    ];
    "Nvim" = [
      {
        run = ''nvim "$@"'';
        block = true;
      }
    ];
    "Neovide" = [
      {
        run = ''neovide "$@"'';
        block = true;
      }
    ];
    "Hx" = [
      {
        run = ''hx "$@"'';
        block = true;
      }
    ];
    "zathura" = [
      {
        run  = ''zathura "$@"'';
        block = true;
      }
    ];
    "papers" = [
      {
        run  = ''papers "$@"'';
        block = true;
      }
    ];
    "tdf" = [
      {
        run  = ''tdf "$@"'';
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
      use  = ["Neovide" "Hx" "Nvim"];
    }
    {
      name = "*.typ";
      use  = ["Neovide" "Hx" "Nvim"];
    }
    {
      mime = "text/*";
      use  = "text";
    }
    {
      mime = "image/*";
      use  = "image";
    }
    {
      mime = "video/*";
      use  = "video";
    }
    {
      mime = "application/pdf";
      use  = ["zathura" "papers" "tdf"];
    }
  ];
};

}

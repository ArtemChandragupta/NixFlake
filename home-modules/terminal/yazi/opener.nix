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
    "pdf" = [
      {
        run  = ''papers "$@"'';
        block = true;
      }
    ];
  };

  open.prepend_rules = [
    {
      name = "*.djvu";
      use  = "pdf";
    }
    {
      name = "*.tex";
      use  = "Neovide";
    }
    {
      name = "*.hs";
      use  = "Hx";
    }
    {
      name = "*.js";
      use  = "Nvim";
    }
    {
      name = "*.tsx";
      use  = "Nvim";
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
      use  = "pdf";
    }
  ];
};

}

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
    "Latex" = [
      {
        run = ''nvim "$@"'';
        block = true;
      }
    ];
    "Haskell" = [
      {
	run = ''hx "$@"'';
	block = true;
      }
    ];
    "pdf" = [
      {
        run  = ''evince "$@"'';
        block = true;
      }
    ];
  };

  open.prepend_rules = [
    {
      name = "*.djvu";
      use = "pdf";
    }
    {
      name = "*.tex";
      use = "Latex";
    }
    {
      name = "*.hs";
      use = "Haskell";
    }
    {
      name = "*.js";
      use = "Latex";
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

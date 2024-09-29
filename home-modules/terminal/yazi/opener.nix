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
        run  = ''totem "$@"'';
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
    "pdf" = [
      {
        run  = ''evince "$@"'';
        block = true;
      }
    ];
  };

  open.prepend_rules = [
    {
      name = "*.tex";
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

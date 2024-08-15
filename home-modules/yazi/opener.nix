{

programs.yazi.settings = {
  opener = {
    "text" = [
      {
        run = ''hx "$@"'';
        block = true;
      }
    ];
    "video" = [
      {
        run  = ''"totem "$@"'';
        block = true;
      }
    ];
    "image" = [
      {
        run  = ''loupe "$@"'';
        block = true;
      }
    ];
    "pdf" = [
      {
        run  = ''evince "$@"'';
        block = true;
      }
    ];
    "archive" = [
      {
        run = ''unar "$@"'';
        desc = "unarchive";
      }
    ];
  };

  open.prepend_rules = [
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

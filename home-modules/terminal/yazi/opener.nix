{

programs.yazi.settings = {
  opener = {
    "mpv" = [
      {
        run = "mpv --no-terminal %s";
        block = true;
      }
    ];
    "image" = [
      {
        run   = "loupe %s";
        block = true;
      }
    ];
    "hx" = [
      {
        run   = "hx %s";
        block = true;
      }
    ];
    "zathura" = [
      {
        run   = "zathura %s";
        block = true;
      }
    ];
    "papers" = [
      {
        run   = "papers %s";
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
      url = "*.svg";
      use = ["image" "hx"];
    }
    {
      mime = "text/*";
      use  = "hx";
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

{ pkgs, ... }:{
programs.yazi.settings = {

  opener = {
    "text" = [
      {
        run  = "neovide --no-fork \"$@\"";
        block = true;
      }
    ];
    "video" = [
      {
        run  = "totem \"$@\"";
        block = true;
      }
    ];
    "image" = [
      {
        run  = "loupe \"$@\"";
        block = true;
      }
    ];
    "pdf" = [
      {
        run  = "evince \"$@\"";
        block = true;
      }
    ];
    "unarchive" = [
      {
        run = ''${pkgs.unar}/bin/unar "$@"'';
        desc = "unarchive";
      }
    ];
  };

  open.rules = [
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
    {
    mime = "*";
    use  = ["text""unarchive"];
    }
  ];

};
}

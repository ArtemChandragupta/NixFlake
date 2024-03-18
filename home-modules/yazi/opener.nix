{ pkgs, ... }:{
programs.yazi.settings = {

  opener = {
    "text" = [
      {
        run  = "hx \"$@\"";
        block = true;
      }
    ];
    "video" = [
      {
        run  = "mpv \"$@\"";
        block = true;
      }
    ];
    "image" = [
      {
        run  = "imv \"$@\"";
        block = true;
      }
    ];
    "pdf" = [
      {
        run  = "${pkgs.zathura}/bin/zathura \"$@\"";
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

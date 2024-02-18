{ pkgs, ... }:{
programs.yazi.settings = {

  opener = {
    "text" = [
      {
        exec  = "hx \"$@\"";
        block = true;
      }
    ];
    "video" = [
      {
        exec  = "mpv \"$@\"";
        block = true;
      }
    ];
    "image" = [
      {
        exec  = "imv \"$@\"";
        block = true;
      }
    ];
    "pdf" = [
      {
        exec  = "${pkgs.zathura}/bin/zathura \"$@\"";
        block = true;
      }
    ];
    "unarchive" = [
      {
        exec = ''${pkgs.unar}/bin/unar "$@"'';
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

{

xdg = {
  enable = true;
  # mime.enable = true;
  mimeApps = {
    enable = true;
    defaultApplications = {
      "application/pdf" = [ "org.gnome.Papers.desktop" ];
      "image/*"         = [ "org.gnome.Loupe.desktop"  ];
      "video/*"         = [ "totem.desktop"            ];

      "text/html"              = [ "firefox.desktop" ];
      "text/xml"               = [ "firefox.desktop" ];
      "x-scheme-handler/http"  = [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
    };
  };
};

}

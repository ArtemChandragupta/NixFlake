{

xdg = {
  enable = true;
  mime.enable = true;
  mimeApps = {
    enable = true;
    
    associations.added = {
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
      "image/*"         = [ "org.gnome.Loupe.desktop"  ];
      "video/*"         = [ "totem.desktop"            ];

      "text/html" = [ "firefox.desktop" ];
      "text/xml" =  [ "firefox.desktop" ];
      "x-scheme-handler/http" =  [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
    };
    
    defaultApplications = {
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
      "image/*"         = [ "org.gnome.Loupe.desktop"  ];
      "video/*"         = [ "totem.desktop"            ];

      "text/html" = [ "firefox.desktop" ];
      "text/xml" =  [ "firefox.desktop" ];
      "x-scheme-handler/http" =  [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
    };
    
  };
};

}

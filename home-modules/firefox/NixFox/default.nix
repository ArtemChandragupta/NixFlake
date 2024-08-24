{ inputs, ... }:{

programs.firefox.profiles.default = {
  extensions = with inputs.firefox-addons.packages."x86_64-linux"; [ sidebery ];
  userChrome  = builtins.readFile ./userChrome.css;
  settings = {
    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
    "svg.context-properties.content.enabled" = true;
  };
};

}

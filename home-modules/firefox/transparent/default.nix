{

programs.firefox.profiles.default = {
  userChrome  = builtins.readFile ./userChrome.css;
  settings = {
    "browser.tabs.allow_transparent_browser" = true; # For transparent frame
  };
};

}

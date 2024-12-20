{

programs.firefox.profiles.default = {
  userChrome  = builtins.readFile ./userChrome.css;
  settings = {
    "browser.tabs.allow_transparent_browser" = true; # For transparent frame
    "startup.homepage_welcome_url" = "https://github.com/ArtemChandragupta/NixFlake/tree/main/home-modules/firefox/transparent";
  };
};

}

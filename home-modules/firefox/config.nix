{

programs.firefox.profiles.default.settings = {
  "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
  "svg.context-properties.content.enabled" = true;

  "ui.key.menuAccessKeyFocuses" = false;           # Remove ALT menu
  "browser.tabs.allow_transparent_browser" = true; # For transparent frame
  
  # Performance
  "gfx.webrender.all" = true;
  "media.ffmpeg.vaapi.enabled"  = true;
  "widget.dmabuf.force-enabled" = true;

  # Disable useless things
  "browser.aboutConfig.showWarning" = false;
  "browser.toolbars.bookmarks.visibility" = "never";
  "browser.tabs.tabmanager.enabled" = false;
  "reader.parse-on-load.enabled" = false;
  "browser.translations.enable" = false;
  "identity.fxaccounts.enabled" = false;
  "browser.vpn_promo.enabled" = false;
  "extensions.pocket.enabled" = false;
  "extensions.htmlaboutaddons.recommendations.enabled" = false;

  # Enable cool bahavior
  "browser.urlbar.placeholderName" = "DuckDuckGo";
  "browser.startup.page" = 3; # Restore session
  "extensions.autoDisableScopes" = 0; # Auto-enable extesions
  "browser.tabs.loadBookmarksInTabs" = true; # Load bookmarks in newtabs
  "browser.search.openintab" = true; # Load search items in new tabs
  "startup.homepage_welcome_url" = "https://github.com/ArtemChandragupta/NixFlake/tree/main/home-modules/firefox";
  "apz.overscroll.enabled" = false; # Disable bouncy scrolling
};

}

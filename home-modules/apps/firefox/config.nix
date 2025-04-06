{

programs.firefox.profiles.default.settings = {
  # Mandatory
  "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
  "svg.context-properties.content.enabled" = true;

  "ui.key.menuAccessKeyFocuses" = false; # Remove ALT menu

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
  "browser.urlbar.placeholderName" = "Find!";
  "browser.urlbar.trim" = true; # Trim https!
  "browser.startup.page" = 3; # Restore session
  "extensions.autoDisableScopes" = 0; # Auto-enable extesions
  "browser.tabs.loadBookmarksInTabs" = true; # Load bookmarks in newtabs
  "browser.search.openintab" = true; # Load search items in new tabs
  "apz.overscroll.enabled" = false; # Disable bouncy scrolling
};

}

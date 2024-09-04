{ var, ... }:{

imports = if var.init 
  then [ ]
  else [ ./NixFox ];

programs.firefox = {
  enable = true;
  profiles.default.settings = {
    # Performance
    "gfx.webrender.all" = true;
    "media.ffmpeg.vaapi.enabled"  = true;
    "widget.dmabuf.force-enabled" = true;

    # Disable useless things
    "browser.toolbars.bookmarks.visibility" = "never";
    "browser.tabs.tabmanager.enabled" = false;
    "reader.parse-on-load.enabled" = false;
    "browser.translations.enable" = false;
    "identity.fxaccounts.enabled" = false;
    "browser.vpn_promo.enabled" = false;
    "extensions.pocket.enabled" = false;
    "extensions.htmlaboutaddons.recommendations.enabled" = false;

    # Enable cool bahavior
    "browser.startup.page" = 3; # Restore session
    "extensions.autoDisableScopes" = 0; # Auto-enable extesions
    "browser.tabs.loadBookmarksInTabs" = true;
    "startup.homepage_welcome_url" = "about:newtab";
    
    "browser.newtabpage.pinned" = [
      {
        title = "VK";
        url   = "https://vk.com/";
      }
      {
        title = "Github";
        url   = "https://github.com/";
      }
      {
        title = "Nix search";
        url   = "https://search.nixos.org/";
      }
      {
        title = "mynixos";
        url   = "https://mynixos.com/";
      }
    ];
  };
};

}

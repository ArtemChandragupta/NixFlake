{ pkgs, inputs, ... }:{

home.file.".mozilla/firefox/default/chrome".source = pkgs.fetchFromGitHub {
  owner = "KiKaraage";
  repo  = "ArcWTF";
  rev   = "885fa7d5e730e3937e3a8b7e966a36ff2421c744";
  hash  = "sha256-QUsb9XsP3VT0wFCUJGMHkF/AtgCYt5xIdvkLvqg90Xs=";
};

programs.firefox = {
  enable = true;
  profiles.default = {
    extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
      sidebery
      userchrome-toggle-extended
    ];
    settings = {
      # Performance
      "gfx.webrender.all" = true;
      "media.ffmpeg.vaapi.enabled"  = true;
      "widget.dmabuf.force-enabled" = true;

      # Disable useless things
      "browser.toolbars.bookmarks.visibility" = "never";
      "browser.tabs.tabmanager.enabled" = false;
      "browser.translations.enable" = false;
      "identity.fxaccounts.enabled" = false;
      "browser.vpn_promo.enabled" = false;
      "extensions.pocket.enabled" = false;
      "extensions.htmlaboutaddons.recommendations.enabled" = false;

      # Enable cool bahavior
      "browser.startup.page" = 3; # Restore session
      "browser.backspace_action" = 0; # Go back by Backspace
      "extensions.autoDisableScopes" = 0; # Auto-enable extesions
      "browser.tabs.loadBookmarksInTabs" = true;
      "startup.homepage_welcome_url" = "about:newtab";

      #ArcWTF need this
      "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      "svg.context-properties.content.enabled" = true;

      "browser.newtabpage.pinned" = builtins.toJSON [
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
          title = "MyNixOS";
          url   = "https://mynixos.com/";
        }
        {
          title = "Gmail";
          url   = "https://mail.google.com/";
        }
        {
          title = "Google drive";
          url   = "https://drive.google.com/";
        }
      ];
    };

  };
};

}

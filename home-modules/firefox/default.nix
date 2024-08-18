{ pkgs, inputs, ... }:{

home.file.".mozilla/firefox/default/chrome".source = pkgs.fetchFromGitHub {
  owner = "KiKaraage";
  repo = "ArcWTF";
  rev = "885fa7d5e730e3937e3a8b7e966a36ff2421c744";
  hash = "sha256-QUsb9XsP3VT0wFCUJGMHkF/AtgCYt5xIdvkLvqg90Xs=";
};

programs.firefox = {
  enable = true;
  profiles.default = {
    extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
      sidebery
      userchrome-toggle-extended
    ];

    bookmarks = [
      {
        name = "nix search";
        url = "https://search.nixos.org";
      }
      {
        name = "MyNixOS";
        url = "https://mynixos.com";
      }
      {
        name = "Github";
        url = "https://github.com";
      }
    ];

    settings = {
      "browser.newtabpage.pinned" = [
        {
          title = "Nix search";
          url = "https://search.nixos.org";
        }
        {
          title = "MyNixOS";
          url = "https://mynixos.com";
        }
        {
          title = "Github";
          url = "https://github.com";
        }
      ];

      "browser.toolbars.bookmarks.visibility" = "never";
      "browser.tabs.tabmanager.enabled" = false;
      "browser.translations.enable" = false;

      "identity.fxaccounts.enabled" = false;
      "extensions.pocket.enabled" = false;
      "browser.startup.page" = 3; # Restore session

      "extensions.autoDisableScopes" = 0; # Auto-enable extesions 

      #ArcWTF need this
      "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      "svg.context-properties.content.enabled" = true;

      "startup.homepage_welcome_url" = "https://github.com/ArtemChandragupta/NixFlake";
    };

  };
};

}

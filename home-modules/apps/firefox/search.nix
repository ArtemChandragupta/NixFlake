{ pkgs, ... }:{

programs.firefox.profiles.default.search = {
  default = "DuckDuckGo (HTML)";
  order = [
    "Google"
    "GitHub"
    "Nix Packages"
    "Home Manager"
  ];
  force = true;
  engines = {
    "DuckDuckGo (HTML)" = {
      urls = [{
        template = "https://html.duckduckgo.com/html";
        params = [{ name = "q"; value = "{searchTerms}"; }];
      }];
    };
    
    "Nix Packages" = {
      urls = [{
        template = "https://search.nixos.org/packages";
        params = [
          { name = "type";  value = "packages";      }
          { name = "query"; value = "{searchTerms}"; }
        ];
      }];
      icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      definedAliases = [ "@pkg" ];
    };

    "Home Manager" = {
      urls = [{
        template = "https://home-manager-options.extranix.com/";
        params = [
          { name = "query";   value = "{searchTerms}"; }
          { name = "release"; value = "master";        }
        ];
      }];
      icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      definedAliases = [ "@hm" ];
    };

    "GitHub" = {
      urls = [{
        template = "https://github.com/search";
        params = [{ name = "q"; value = "{searchTerms}"; }];
      }];
      iconUpdateURL = "https://github.githubassets.com/favicons/favicon-dark.png";
      definedAliases = ["@gh"];
    };
    
    "Google".metaData.alias = "@g";
    "Bing".metaData.hidden = true;
    "Wikipedia (en)".metaData.hidden = true;
    "DuckDuckGo".metaData.hidden = true;
  };
};

}

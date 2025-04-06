{ pkgs, ... }:{

programs.firefox.profiles.default.search = {
  default = "google";
  order = [
    "GitHub"
    "Nix Packages"
    "Home Manager"
  ];
  force = true;
  engines = {
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
      icon = "https://github.githubassets.com/favicons/favicon-dark.png";
      definedAliases = ["@gh"];
    };
    
    "GitHub".metaData.alias = "@gh";
    "bing".metaData.hidden = true;
    "wikipedia".metaData.hidden = true;
    "ddg".metaData.hidden = true;
  };
};

}

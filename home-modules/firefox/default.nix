{ inputs, ... }:{

imports =[
  ./bookmarks.nix
  ./config.nix
  ./search.nix
];

programs.firefox = {
  enable = true;
  profiles.default = {
    extensions = with inputs.firefox-addons.packages."x86_64-linux"; [ sidebery ];
    userChrome  = builtins.readFile ./userChrome.css;
    # userContent = builtins.readFile ./userContent.css;
  };
};

}

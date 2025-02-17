{ inputs, ... }:{

imports =[
  ./solid
  # ./transparent

  ./bookmarks.nix
  ./config.nix
  ./search.nix
];

programs.firefox = {
  enable = true;
  profiles.default = {
    extensions.packages = with inputs.firefox-addons.packages."x86_64-linux"; [ sidebery ];
    userContent = builtins.readFile ./userContent.css;
  };
};

}

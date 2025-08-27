{ inputs, ... }:{

imports =[
  ./bookmarks.nix
  ./config.nix
  ./search.nix
];

programs.firefox = {
  enable = true;
  profiles.default = {
    userChrome  = builtins.readFile ./userChrome.css;
    extensions.packages = [
      inputs.firefox-addons.packages."x86_64-linux".sidebery 
    ];
  };
};

}

{ pkgs, inputs, ... }:{

imports =[
  ./solid
  # ./transparent

  ./bookmarks.nix
  ./config.nix
  ./search.nix
];

programs.firefox = {
  enable = true;
  # package = pkgs.firefox-esr;
  profiles.default.extensions.packages = [
    inputs.firefox-addons.packages."x86_64-linux".sidebery 
  ];
};

}
